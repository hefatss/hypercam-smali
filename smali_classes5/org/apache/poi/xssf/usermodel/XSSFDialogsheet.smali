.class public Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;
.super Lorg/apache/poi/xssf/usermodel/XSSFSheet;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Sheet;


# instance fields
.field public dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/POIXMLDocumentPart;->getPackageRelationship()Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/openxml4j/opc/PackageRelationship;)V

    .line 2
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    .line 3
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    return-void
.end method


# virtual methods
.method public bridge synthetic createRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;

    move-result-object p0

    return-object p0
.end method

.method public createRow(I)Lorg/apache/poi/xssf/usermodel/XSSFRow;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDialog()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSheetTypeColumnBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSheetTypeHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setHeaderFooter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getHeaderFooter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;

    move-result-object p0

    return-object p0
.end method

.method public getSheetTypePageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setPageMargins(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getPageMargins()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageMargins;

    move-result-object p0

    return-object p0
.end method

.method public getSheetTypePrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setPrintOptions(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getPrintOptions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;

    move-result-object p0

    return-object p0
.end method

.method public getSheetTypeProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setSheetProtection(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object p0

    return-object p0
.end method

.method public getSheetTypeRowBreaks()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageBreak;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSheetTypeSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setSheetFormatPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object p0

    return-object p0
.end method

.method public getSheetTypeSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setSheetPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object p0

    return-object p0
.end method

.method public getSheetTypeSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->setSheetViews(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;)V

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;->addNewSheetView()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetView;

    .line 4
    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/XSSFDialogsheet;->dialogsheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDialogsheet;->getSheetViews()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetViews;

    move-result-object p0

    return-object p0
.end method
