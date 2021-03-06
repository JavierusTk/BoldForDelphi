(************************************)
(*    This file is autogenerated    *)
(* Any manual changes will be LOST! *)
(************************************)

(* This file should be stored in the same directory    *)
(* as the form/datamodule with the corresponding model *)

// IMPORTANT NOTE:
// This unit needs BuildingsAndOwners_TLB to be generated. To generate this follow the following steps:
// * create a new TypeLibrary (In Delphi: File->New->ActiveX tab->Type Library)
// * Switch to the Uses-tab in the Type Library editor
// * RightClick and select "Show All Type Libraries"
// * Check the "Bold ObjectSpace Type Library
// * RightClick and select "Show Selected"
// * Switch to the Text-tab
// * Paste the text from BuildingsAndOwners.idl
// * Save the TypeLibrary (CTRL-S) as BuildingsAndOwners.tlb in the same catalog as this unit

// 

{ File generated  }

unit BuildingsAndOwners_Adapters;

interface

uses
  ActiveX,
  BoldComAdapter,
  BoldComObjectSpace_TLB,
  BoldComObjectSpaceAdapters,
  BuildingsAndOwners,
  BuildingsAndOwners_TLB;

type

  TBusinessClassesRootAdapter = class;
  TBuildingAdapter = class;
  TOwnershipAdapter = class;
  TPersonAdapter = class;
  TResidential_BuildingAdapter = class;

  TBusinessClassesRootAdapter = class(TBoldComObjectAdapter, IBusinessClassesRoot)
  private
    function GetAsBusinessClassesRoot: TBusinessClassesRoot;
  protected
  public
    constructor Create(AdaptableObject: TBoldAdaptableObject; Owner: Boolean; const TypeLib: ITypeLib; const DispIntf: TGUID); override;
    property AsBusinessClassesRoot: TBusinessClassesRoot read GetAsBusinessClassesRoot;
  end;


  TBuildingAdapter = class(TBusinessClassesRootAdapter, IBuilding)
  private
    function GetAsBuilding: TBuilding;
  protected
    function Get_ZipCode: Integer; safecall;
    procedure Set_ZipCode(NewValue: Integer); safecall;
    function Get_Address: WideString; safecall;
    procedure Set_Address(const NewValue: WideString); safecall;
    function Get_Owners: IBoldObjectList; safecall;
    function Get_Ownership: IBoldObjectList; safecall;
  public
    constructor Create(AdaptableObject: TBoldAdaptableObject; Owner: Boolean; const TypeLib: ITypeLib; const DispIntf: TGUID); override;
    property AsBuilding: TBuilding read GetAsBuilding;
  end;


  TOwnershipAdapter = class(TBusinessClassesRootAdapter, IOwnership)
  private
    function GetAsOwnership: TOwnership;
  protected
    function Get_Owners: IBusinessClassesRoot; safecall;
    function Get_OwnedBuildings: IBusinessClassesRoot; safecall;
  public
    constructor Create(AdaptableObject: TBoldAdaptableObject; Owner: Boolean; const TypeLib: ITypeLib; const DispIntf: TGUID); override;
    property AsOwnership: TOwnership read GetAsOwnership;
  end;


  TPersonAdapter = class(TBusinessClassesRootAdapter, IPerson)
  private
    function GetAsPerson: TPerson;
  protected
    function Get_FirstName: WideString; safecall;
    procedure Set_FirstName(const NewValue: WideString); safecall;
    function Get_LastName: WideString; safecall;
    procedure Set_LastName(const NewValue: WideString); safecall;
    function Get_Assets: Currency; safecall;
    procedure Set_Assets(NewValue: Currency); safecall;
    function Get_IsMarried: WordBool; safecall;
    procedure Set_IsMarried(NewValue: WordBool); safecall;
    function Get_Home: IBusinessClassesRoot; safecall;
    procedure Set_Home(const NewValue: IBusinessClassesRoot); safecall;
    function Get_OwnedBuildings: IBoldObjectList; safecall;
    function Get_Ownership: IBoldObjectList; safecall;
    procedure BorrowFrom(const Lender: IPerson; Amount: integer); safecall;
  public
    constructor Create(AdaptableObject: TBoldAdaptableObject; Owner: Boolean; const TypeLib: ITypeLib; const DispIntf: TGUID); override;
    property AsPerson: TPerson read GetAsPerson;
  end;


  TResidential_BuildingAdapter = class(TBuildingAdapter, IResidential_Building)
  private
    function GetAsResidential_Building: TResidential_Building;
  protected
    function Get_TotalRent: Currency; safecall;
    procedure Set_TotalRent(NewValue: Currency); safecall;
    function Get_Residents: IBoldObjectList; safecall;
    procedure ChargeRent; safecall;
  public
    constructor Create(AdaptableObject: TBoldAdaptableObject; Owner: Boolean; const TypeLib: ITypeLib; const DispIntf: TGUID); override;
    property AsResidential_Building: TResidential_Building read GetAsResidential_Building;
  end;


implementation

uses
  BoldComUtils;

var
  G_TypeLibrary: ITypeLib = nil;

function BuildingsAndOwners_TypeLibrary: ITypeLib;
begin
  if not Assigned(G_TypeLibrary) then
  begin
    if Failed(LoadRegTypeLib(LIBID_BuildingsAndOwners,1,0,0,G_TypeLibrary)) then
      raise EBoldCom.Create('Unable to load type library (BuildingsAndOwners)');
  end;
  Result := G_TypeLibrary;
end;


{ TBusinessClassesRootAdapter }

constructor TBusinessClassesRootAdapter.Create(AdaptableObject: TBoldAdaptableObject; Owner: Boolean; const TypeLib: ITypeLib; const DispIntf: TGUID);
begin
  if Assigned(TypeLib) then
    inherited Create(AdaptableObject, Owner, TypeLib, DispIntf)
  else
    inherited Create(AdaptableObject, Owner, BuildingsAndOwners_TypeLibrary, IBusinessClassesRoot);
end;

function TBusinessClassesRootAdapter.GetAsBusinessClassesRoot: TBusinessClassesRoot;
begin
  Result := EnsuredAdaptee as TBusinessClassesRoot;
end;




{ TBuildingAdapter }

constructor TBuildingAdapter.Create(AdaptableObject: TBoldAdaptableObject; Owner: Boolean; const TypeLib: ITypeLib; const DispIntf: TGUID);
begin
  if Assigned(TypeLib) then
    inherited Create(AdaptableObject, Owner, TypeLib, DispIntf)
  else
    inherited Create(AdaptableObject, Owner, BuildingsAndOwners_TypeLibrary, IBuilding);
end;

function TBuildingAdapter.GetAsBuilding: TBuilding;
begin
  Result := EnsuredAdaptee as TBuilding;
end;


function TBuildingAdapter.Get_ZipCode: Integer;
begin
  result := AsBuilding.ZipCode;
end;

procedure TBuildingAdapter.Set_ZipCode(NewValue: Integer);
begin
  AsBuilding.ZipCode := NewValue;
end;

function TBuildingAdapter.Get_Address: WideString;
begin
  result := AsBuilding.Address;
end;

procedure TBuildingAdapter.Set_Address(const NewValue: WideString);
begin
  AsBuilding.Address := NewValue;
end;

function TBuildingAdapter.Get_Owners: IBoldObjectList;
begin
  BoldComCreateAdapter(AsBuilding.Owners, False, IBoldObjectList, Result);
end;

function TBuildingAdapter.Get_Ownership: IBoldObjectList;
begin
  BoldComCreateAdapter(AsBuilding.Ownership, False, IBoldObjectList, Result);
end;



{ TOwnershipAdapter }

constructor TOwnershipAdapter.Create(AdaptableObject: TBoldAdaptableObject; Owner: Boolean; const TypeLib: ITypeLib; const DispIntf: TGUID);
begin
  if Assigned(TypeLib) then
    inherited Create(AdaptableObject, Owner, TypeLib, DispIntf)
  else
    inherited Create(AdaptableObject, Owner, BuildingsAndOwners_TypeLibrary, IOwnership);
end;

function TOwnershipAdapter.GetAsOwnership: TOwnership;
begin
  Result := EnsuredAdaptee as TOwnership;
end;


function TOwnershipAdapter.Get_Owners: IBusinessClassesRoot;
begin
  BoldComCreateAdapter(AsOwnership.Owners, False, IBusinessClassesRoot, Result);
end;

function TOwnershipAdapter.Get_OwnedBuildings: IBusinessClassesRoot;
begin
  BoldComCreateAdapter(AsOwnership.OwnedBuildings, False, IBusinessClassesRoot, Result);
end;



{ TPersonAdapter }

constructor TPersonAdapter.Create(AdaptableObject: TBoldAdaptableObject; Owner: Boolean; const TypeLib: ITypeLib; const DispIntf: TGUID);
begin
  if Assigned(TypeLib) then
    inherited Create(AdaptableObject, Owner, TypeLib, DispIntf)
  else
    inherited Create(AdaptableObject, Owner, BuildingsAndOwners_TypeLibrary, IPerson);
end;

function TPersonAdapter.GetAsPerson: TPerson;
begin
  Result := EnsuredAdaptee as TPerson;
end;


function TPersonAdapter.Get_FirstName: WideString;
begin
  result := AsPerson.FirstName;
end;

procedure TPersonAdapter.Set_FirstName(const NewValue: WideString);
begin
  AsPerson.FirstName := NewValue;
end;

function TPersonAdapter.Get_LastName: WideString;
begin
  result := AsPerson.LastName;
end;

procedure TPersonAdapter.Set_LastName(const NewValue: WideString);
begin
  AsPerson.LastName := NewValue;
end;

function TPersonAdapter.Get_Assets: Currency;
begin
  result := AsPerson.Assets;
end;

procedure TPersonAdapter.Set_Assets(NewValue: Currency);
begin
  AsPerson.Assets := NewValue;
end;

function TPersonAdapter.Get_IsMarried: WordBool;
begin
  result := AsPerson.IsMarried;
end;

procedure TPersonAdapter.Set_IsMarried(NewValue: WordBool);
begin
  AsPerson.IsMarried := NewValue;
end;

function TPersonAdapter.Get_Home: IBusinessClassesRoot;
begin
  BoldComCreateAdapter(AsPerson.Home, False, IBusinessClassesRoot, Result);
end;

procedure TPersonAdapter.Set_Home(const NewValue: IBusinessClassesRoot);
begin
  AsPerson.Home := BoldComInterfaceToObject(NewValue) as TResidential_Building;
end;

function TPersonAdapter.Get_OwnedBuildings: IBoldObjectList;
begin
  BoldComCreateAdapter(AsPerson.OwnedBuildings, False, IBoldObjectList, Result);
end;

function TPersonAdapter.Get_Ownership: IBoldObjectList;
begin
  BoldComCreateAdapter(AsPerson.Ownership, False, IBoldObjectList, Result);
end;

procedure TPersonAdapter.BorrowFrom(const Lender: IPerson; Amount: integer);
begin
  AsPerson.BorrowFrom(BoldComInterfaceToObject(Lender) as TPerson, Amount);
end;



{ TResidential_BuildingAdapter }

constructor TResidential_BuildingAdapter.Create(AdaptableObject: TBoldAdaptableObject; Owner: Boolean; const TypeLib: ITypeLib; const DispIntf: TGUID);
begin
  if Assigned(TypeLib) then
    inherited Create(AdaptableObject, Owner, TypeLib, DispIntf)
  else
    inherited Create(AdaptableObject, Owner, BuildingsAndOwners_TypeLibrary, IResidential_Building);
end;

function TResidential_BuildingAdapter.GetAsResidential_Building: TResidential_Building;
begin
  Result := EnsuredAdaptee as TResidential_Building;
end;


function TResidential_BuildingAdapter.Get_TotalRent: Currency;
begin
  result := AsResidential_Building.TotalRent;
end;

procedure TResidential_BuildingAdapter.Set_TotalRent(NewValue: Currency);
begin
  AsResidential_Building.TotalRent := NewValue;
end;

function TResidential_BuildingAdapter.Get_Residents: IBoldObjectList;
begin
  BoldComCreateAdapter(AsResidential_Building.Residents, False, IBoldObjectList, Result);
end;

procedure TResidential_BuildingAdapter.ChargeRent;
begin
  AsResidential_Building.ChargeRent;
end;



initialization
  BoldComRegisterAdapter(TBusinessClassesRootAdapter, TBusinessClassesRoot);
  BoldComRegisterAdapter(TBuildingAdapter, TBuilding);
  BoldComRegisterAdapter(TOwnershipAdapter, TOwnership);
  BoldComRegisterAdapter(TPersonAdapter, TPerson);
  BoldComRegisterAdapter(TResidential_BuildingAdapter, TResidential_Building);
end.



 
 

