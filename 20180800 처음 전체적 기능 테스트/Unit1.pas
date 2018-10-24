unit Unit1;

interface


type


 TEmp = class
    Office:String;
    Empno:Integer;
    Baserate:real;
    function Salary:real; virtual;abstract;
 //   Constructor Create; override;
  end;

  THourly = class(TEmp)
    Hrs,rate:Integer;
   // class procedure Greeting; static;
    class var Etc: string;
//    function Salary:Real; override;
   // Constructor Create; override;
  private
//    function Echo(value: String): String;
   end;
implementation

end.
