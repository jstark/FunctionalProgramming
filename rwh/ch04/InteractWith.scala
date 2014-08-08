import scala.io.Source
import java.io.PrintWriter

def interactWith(func: String => String, inputFile: String, outputFile: String) = {
	val output = new PrintWriter(outputFile)
	val input = Source.fromFile(inputFile)
	output.write(input.mkString)
	input.close()
	output.close()
}

args match {
	case Array(inputFile, outputFile) => interactWith(identity, inputFile, outputFile)
	case _                            => println("error")
}