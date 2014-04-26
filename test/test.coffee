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
    line1=mf.getNextLine()
    console.log line1

    mf.reset()
    @assertTrue mf.hasNextLine()
    line2= mf.getNextLine()
    console.log line2

    @assertEquals(line1,line2)

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

    mf.reset()
    @assertTrue(mf.position is 0)


console.log TestCase.getResult()