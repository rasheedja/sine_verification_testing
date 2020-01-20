import subprocess

validDegrees = [3, 5, 7, 9]
validTypes = ["real", "float32", "float64"]
taylorSineDegree = int(input("Degree of taylor sine " + str(validDegrees) + ": "))

if (taylorSineDegree in validDegrees):

  approximationType = input("Type of approximation" + str(validTypes) + ": ")

  if (approximationType in validTypes):
    precision = 1
    successPrecision = precision
    largestFailedPrecision = precision - 1000# Dummy value
    satCounter = 1
    unsatCounter = 1
    fileName = "sine_and_taylor_sine_" + str(taylorSineDegree) + "_" + approximationType + ".smt2"

    while(True):

      while (True):
        if (precision  <= largestFailedPrecision): # While precision is in range that we know will fail
          print("SKIPPED: " + "Failure count: " + str(unsatCounter) + " Precision = " + '{0:.100f}'.format(precision))
          unsatCounter += 1
          precision = successPrecision - precision / 2 ** unsatCounter

          if (precision == successPrecision): # Best possible precision achieved with this script
            print ("STOPPED: Same successful precision achieved consecutively. Precision = " + '{0:.100f}'.format(successPrecision))

            if (input("Stop looping? (y): ") == "y"):
              raise SystemExit # quickest way to stop script here
          
          satCounter = 1
        else: # If we get an precision that we know will not fail, break out of this loop
          break
 
      out = subprocess.run(["timeout", "300", "dreal", fileName, "--precision", '{0:.100f}'.format(precision)], stdout=subprocess.PIPE)
      
      if (out.returncode != 0): # Command timed out
        print("TIMEOUT: " + "Failure count: " + str(unsatCounter) + " Precision = " + '{0:.100f}'.format(precision))
        if (precision > largestFailedPrecision): largestFailedPrecision = precision
        
        unsatCounter += 1
        precision = successPrecision - precision / 2 ** unsatCounter   

        if (precision == successPrecision): # Best possible precision achieved with this script
          print ("STOPPED: Same successful precision achieved consecutively. Precision = " + '{0:.100f}'.format(successPrecision))

          if (input("Stop looping? (y): ") == "y"):
            break
        
        satCounter = 1
      else:
        if ('unsat' in out.stdout.decode("utf-8")): # If dreal failed to prove with the given precision
          print("FAILED:  " + "Failure count: " + str(unsatCounter) + " Precision = " + '{0:.100f}'.format(precision))
          if (precision > largestFailedPrecision): largestFailedPrecision = precision
          
          unsatCounter += 1
          precision = successPrecision - precision / 2 ** unsatCounter   

          if (precision == successPrecision): # Best possible precision achieved with this script
            print ("STOPPED: Same successful precision achieved consecutively. Precision = " + '{0:.100f}'.format(successPrecision))

            if (input("Stop looping? (y): ") == "y"):
              break
          
          satCounter = 1

        else: # If dreal was successful in proving the given precision
          print("SUCCESS: " + "Success count: " + str(satCounter) + " Precision = " + '{0:.100f}'.format(precision))
          if (precision < successPrecision):
            if (precision / successPrecision > 0.999999999999):
              print ("STOPPED: Very small relative difference in precision. Precision = " + '{0:.100f}'.format(successPrecision))
              if (input("Stop looping? (y): ") == "y"):
                break

          successPrecision = precision
          precision = precision / 2 ** satCounter
          unsatCounter = 1
          satCounter += 1


  else:
    print("Invalid approximation type. Valid types are: "  + str(validTypes))
else:
  print("Invalid degree. Valid degrees are: " + str(validDegrees))

