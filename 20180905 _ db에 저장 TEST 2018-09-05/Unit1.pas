unit Unit1;

interface

type
  TEmp = Class
    Office:String;
    Empno:Integer;
    Baserate:real;
    function Salary:real; virtual;abstract;
  End;

  THourly = Class(TEmp)
    Hrs,rate:Integer;
    Class var Etc: String;
  End;

implementation

end.
