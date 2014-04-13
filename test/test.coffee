{TestCase,TestResult}=require("beast-test")
{MegaFile}=require "../bin/MegaFile"


new class TestOpenFiles extends TestCase
  constructor:->
    super()

  base:->
    mf=new MegaFile(["./address.txt","./contact.txt"])
    mf

  testFiles:(mf)->
    @assertEquals mf.file(),"./address.txt"
    @assertEquals mf.getFile(),"./address.txt"
    @assertEquals mf.file(),"./contact.txt"

  testFilesExistence:(mf)->
    @assertTrue mf.hasNextLine()
    console.log mf.getNextLine()

    @assertTrue mf.hasNextLine()
    console.log mf.getNextLine()

    @assertTrue mf.hasNextLine()
    console.log mf.getNextLine()

    @assertTrue mf.hasNextLine()
    console.log mf.getNextLine()

    @assertTrue mf.hasNextLine()
    console.log mf.getNextLine()

    @assertTrue mf.hasNextLine()
    console.log mf.getNextLine()


console.log TestCase.getResult()