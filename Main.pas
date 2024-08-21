unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,  FMX.Media;

type
  TForm2 = class(TForm)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    CameraComponent: TCameraComponent;
    procedure Rectangle2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FFlashlight: TCameraComponent;
    FIsOn: Boolean;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.FormCreate(Sender: TObject);
begin
  FIsOn := True;
  if not Assigned(CameraComponent) then
    CameraComponent := TCameraComponent.Create(Self);
end;

procedure TForm2.Rectangle2Click(Sender: TObject);
begin
     if FIsOn then
        begin
          Rectangle1.Fill.Color := TAlphaColors.White;
          Rectangle2.Fill.Color := TAlphaColors.Black;
          CameraComponent.TorchMode := TTorchMode.ModeOff;
          FIsOn := False
        end
     else
       begin
           Rectangle1.Fill.Color := TAlphaColors.Black;
           Rectangle2.Fill.Color := TAlphaColors.White;
           CameraComponent.TorchMode := TTorchMode.ModeOn;
           FIsOn := True
       end;


end;


end.
