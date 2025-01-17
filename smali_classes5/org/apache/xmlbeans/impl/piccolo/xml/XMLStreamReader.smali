.class public final Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;
.super Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$JavaStreamDecoder;,
        Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$FastStreamDecoder;,
        Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$XMLStreamDecoder;
    }
.end annotation


# static fields
.field private static final BYTE_BUFFER_SIZE:I = 0x2000

.field private static final MAX_XML_DECL_CHARS:I = 0x64

.field private static charsetTable:Ljava/util/HashMap;


# instance fields
.field private activeStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$XMLStreamDecoder;

.field private bbuf:[B

.field private bbufEnd:I

.field private bbufPos:I

.field private cbuf:[C

.field private cbufEnd:I

.field private cbufPos:I

.field private decodeResult:[I

.field private decoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;

.field private encoding:Ljava/lang/String;

.field private eofReached:Z

.field private fastStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$FastStreamDecoder;

.field private in:Ljava/io/InputStream;

.field private javaStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$JavaStreamDecoder;

.field private maxBytesPerChar:I

.field private minBytesPerChar:I

.field private rewindDeclaration:Z

.field private useDeclaredEncoding:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-US"

    const-string v2, "Cp037"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-CA"

    const-string v2, "Cp037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-NL"

    const-string v2, "Cp037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-WT"

    const-string v2, "Cp037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-DK"

    const-string v2, "Cp277"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-NO"

    const-string v2, "Cp277"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-FI"

    const-string v2, "Cp278"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-SE"

    const-string v2, "Cp278"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-IT"

    const-string v2, "Cp280"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-ES"

    const-string v2, "Cp284"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-GB"

    const-string v2, "Cp285"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-FR"

    const-string v2, "Cp297"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-AR1"

    const-string v2, "Cp420"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-GR"

    const-string v2, "Cp423"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-HE"

    const-string v2, "Cp424"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-BE"

    const-string v2, "Cp500"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-CH"

    const-string v2, "Cp500"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-ROECE"

    const-string v2, "Cp870"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-YU"

    const-string v2, "Cp870"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-IS"

    const-string v2, "Cp871"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-TR"

    const-string v2, "Cp905"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-CP-AR2"

    const-string v2, "Cp918"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "UTF-16"

    const-string v2, "Unicode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-10646-UCS-2"

    const-string v2, "Unicode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ANSI_X3.4-1986"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP367"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-367"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM367"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-IR-6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO646-US"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO_646.IRV:1991"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "US"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "BIG5"

    const-string v2, "BIG5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSBIG5"

    const-string v2, "BIG5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP037"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM037"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-37"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM037"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP1026"

    const-string v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM1026"

    const-string v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-1026"

    const-string v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM1026"

    const-string v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP1047"

    const-string v2, "CP1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-1047"

    const-string v2, "CP1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM1047"

    const-string v2, "CP1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CCSID01140"

    const-string v2, "CP1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP01140"

    const-string v2, "CP1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-1140"

    const-string v2, "CP1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM01140"

    const-string v2, "CP1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CCSID01141"

    const-string v2, "CP1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP01141"

    const-string v2, "CP1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-1141"

    const-string v2, "CP1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM01141"

    const-string v2, "CP1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CCSID01142"

    const-string v2, "CP1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP01142"

    const-string v2, "CP1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-1142"

    const-string v2, "CP1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM01142"

    const-string v2, "CP1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CCSID01143"

    const-string v2, "CP1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP01143"

    const-string v2, "CP1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-1143"

    const-string v2, "CP1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM01143"

    const-string v2, "CP1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CCSID01144"

    const-string v2, "CP1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP01144"

    const-string v2, "CP1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-1144"

    const-string v2, "CP1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM01144"

    const-string v2, "CP1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CCSID01145"

    const-string v2, "CP1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP01145"

    const-string v2, "CP1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-1145"

    const-string v2, "CP1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM01145"

    const-string v2, "CP1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CCSID01146"

    const-string v2, "CP1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP01146"

    const-string v2, "CP1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-1146"

    const-string v2, "CP1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM01146"

    const-string v2, "CP1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CCSID01147"

    const-string v2, "CP1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP01147"

    const-string v2, "CP1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-1147"

    const-string v2, "CP1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM01147"

    const-string v2, "CP1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CCSID01148"

    const-string v2, "CP1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP01148"

    const-string v2, "CP1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-1148"

    const-string v2, "CP1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM01148"

    const-string v2, "CP1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CCSID01149"

    const-string v2, "CP1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP01149"

    const-string v2, "CP1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-1149"

    const-string v2, "CP1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM01149"

    const-string v2, "CP1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "WINDOWS-1250"

    const-string v2, "CP1250"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "WINDOWS-1251"

    const-string v2, "CP1251"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "WINDOWS-1252"

    const-string v2, "CP1252"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "WINDOWS-1253"

    const-string v2, "CP1253"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "WINDOWS-1254"

    const-string v2, "CP1254"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "WINDOWS-1255"

    const-string v2, "CP1255"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "WINDOWS-1256"

    const-string v2, "CP1256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "WINDOWS-1257"

    const-string v2, "CP1257"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "WINDOWS-1258"

    const-string v2, "CP1258"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP273"

    const-string v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM273"

    const-string v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-273"

    const-string v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM273"

    const-string v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP277"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM277"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-277"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM277"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP278"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM278"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-278"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM278"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP280"

    const-string v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM280"

    const-string v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-280"

    const-string v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM280"

    const-string v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP284"

    const-string v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM284"

    const-string v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-284"

    const-string v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM284"

    const-string v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP285"

    const-string v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM285"

    const-string v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-285"

    const-string v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM285"

    const-string v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP290"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v2, "CSIBM290"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v2, "EBCDIC-JP-KANA"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v2, "IBM-290"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v2, "IBM290"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP297"

    const-string v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM297"

    const-string v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-297"

    const-string v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM297"

    const-string v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP420"

    const-string v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM420"

    const-string v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-420"

    const-string v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM420"

    const-string v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP424"

    const-string v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM424"

    const-string v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-424"

    const-string v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM424"

    const-string v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "437"

    const-string v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSPC8CODEPAGE437"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-437"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM437"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP500"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM500"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-500"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM500"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP775"

    const-string v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSPC775BALTIC"

    const-string v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-775"

    const-string v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM775"

    const-string v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "850"

    const-string v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSPC850MULTILINGUAL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-850"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM850"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "852"

    const-string v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSPCP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-852"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM852"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "855"

    const-string v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM855"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-855"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM855"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "857"

    const-string v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM857"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-857"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM857"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CCSID00858"

    const-string v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP00858"

    const-string v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-858"

    const-string v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM00858"

    const-string v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "860"

    const-string v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM860"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-860"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM860"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "861"

    const-string v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP-IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM861"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-861"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM861"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "862"

    const-string v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSPC862LATINHEBREW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-862"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM862"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "863"

    const-string v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM863"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-863"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM863"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP864"

    const-string v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM864"

    const-string v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-864"

    const-string v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM864"

    const-string v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "865"

    const-string v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM865"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-865"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM865"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "866"

    const-string v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM866"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-866"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM866"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP-AR"

    const-string v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM868"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-868"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM868"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP-GR"

    const-string v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM869"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-869"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM869"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP870"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM870"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-870"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM870"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP871"

    const-string v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM871"

    const-string v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-871"

    const-string v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM871"

    const-string v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP918"

    const-string v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSIBM918"

    const-string v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-918"

    const-string v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM918"

    const-string v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CCSID00924"

    const-string v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP00924"

    const-string v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EBCDIC-LATIN9--EURO"

    const-string v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-924"

    const-string v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM00924"

    const-string v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSEUCPKDFMTJAPANESE"

    const-string v2, "EUCJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EUC-JP"

    const-string v2, "EUCJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EXTENDED_UNIX_CODE_PACKED_FORMAT_FOR_JAPANESE"

    const-string v2, "EUCJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "GB18030"

    const-string v2, "GB18030"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSGB2312"

    const-string v2, "GB2312"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "GB2312"

    const-string v2, "GB2312"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-2022-CN"

    const-string v2, "ISO2022CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSISO2022KR"

    const-string v2, "ISO2022KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-2022-KR"

    const-string v2, "ISO2022KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CP819"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSISOLATIN1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM-819"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "IBM819"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-IR-100"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO_8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "L1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "LATIN1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSISOLATIN2"

    const-string v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-IR-101"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO_8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "L2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "LATIN2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSISOLATIN3"

    const-string v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-8859-3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-IR-109"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO_8859-3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "L3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "LATIN3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSISOLATIN4"

    const-string v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-8859-4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-IR-110"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO_8859-4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "L4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "LATIN4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSISOLATINCYRILLIC"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CYRILLIC"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-8859-5"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-IR-144"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO_8859-5"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ARABIC"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ASMO-708"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSISOLATINARABIC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ECMA-114"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-8859-6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-IR-127"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO_8859-6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSISOLATINGREEK"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ECMA-118"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ELOT_928"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "GREEK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "GREEK8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-8859-7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-IR-126"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO_8859-7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSISOLATINHEBREW"

    const-string v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "HEBREW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-8859-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-8859-8-I"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-IR-138"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO_8859-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSISOLATIN5"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-8859-9"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-IR-148"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO_8859-9"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "L5"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "LATIN5"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSISO2022JP"

    const-string v2, "JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-2022-JP"

    const-string v2, "JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSISO13JISC6220JP"

    const-string v2, "JIS0201"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "X0201"

    const-string v2, "JIS0201"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSISO87JISX0208"

    const-string v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-IR-87"

    const-string v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "X0208"

    const-string v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "X0208DBIJIS_X0208-1983"

    const-string v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSISO159JISX02121990"

    const-string v2, "JIS0212"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "ISO-IR-159"

    const-string v2, "JIS0212"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "X0212"

    const-string v2, "JIS0212"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSKOI8R"

    const-string v2, "KOI8_R"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "KOI8-R"

    const-string v2, "KOI8_R"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "EUC-KR"

    const-string v2, "KSC5601"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSWINDOWS31J"

    const-string v2, "MS932"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "WINDOWS-31J"

    const-string v2, "MS932"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "CSSHIFTJIS"

    const-string v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "MS_KANJI"

    const-string v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "SHIFT_JIS"

    const-string v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "TIS-620"

    const-string v2, "TIS620"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "UTF-16BE"

    const-string v2, "UNICODEBIG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "UTF-16LE"

    const-string v2, "UNICODELITTLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    const-string v1, "UTF-8"

    const-string v2, "UTF8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->decodeResult:[I

    const/16 v0, 0x64

    new-array v0, v0, [C

    .line 3
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbuf:[C

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbuf:[B

    .line 5
    new-instance v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$FastStreamDecoder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$FastStreamDecoder;-><init>(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->fastStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$FastStreamDecoder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->javaStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$JavaStreamDecoder;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 9
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->decodeResult:[I

    const/16 v0, 0x64

    new-array v0, v0, [C

    .line 10
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbuf:[C

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 11
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbuf:[B

    .line 12
    new-instance v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$FastStreamDecoder;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$FastStreamDecoder;-><init>(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->fastStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$FastStreamDecoder;

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->javaStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$JavaStreamDecoder;

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->reset(Ljava/io/InputStream;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufEnd:I

    return p0
.end method

.method public static synthetic access$002(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufEnd:I

    return p1
.end method

.method public static synthetic access$100(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufPos:I

    return p0
.end method

.method public static synthetic access$1000(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->decoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;

    return-object p0
.end method

.method public static synthetic access$102(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufPos:I

    return p1
.end method

.method public static synthetic access$108(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufPos:I

    return v0
.end method

.method public static synthetic access$1100(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->eofReached:Z

    return p0
.end method

.method public static synthetic access$112(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;I)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufPos:I

    return v0
.end method

.method public static synthetic access$114(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;J)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufPos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufPos:I

    return p1
.end method

.method public static synthetic access$1200(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->in:Ljava/io/InputStream;

    return-object p0
.end method

.method public static synthetic access$1300(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)[C
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbuf:[C

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufEnd:I

    return p0
.end method

.method public static synthetic access$400(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    return p0
.end method

.method public static synthetic access$412(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;I)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    return v0
.end method

.method public static synthetic access$500(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->maxBytesPerChar:I

    return p0
.end method

.method public static synthetic access$600(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->fillByteBuffer(Z)I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->minBytesPerChar:I

    return p0
.end method

.method public static synthetic access$800(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbuf:[B

    return-object p0
.end method

.method public static synthetic access$900(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->decodeResult:[I

    return-object p0
.end method

.method private fillByteBuffer(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufEnd:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 2
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbuf:[B

    invoke-static {v3, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    :cond_0
    iput v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    .line 4
    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufEnd:I

    .line 5
    :cond_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufEnd:I

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_4

    const/16 v1, 0xa0

    if-ge v2, v1, :cond_4

    .line 6
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbuf:[B

    rsub-int v4, v0, 0x2000

    invoke-virtual {v1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 7
    iget v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufEnd:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufEnd:I

    :cond_2
    add-int/2addr v2, v0

    if-ne v0, v1, :cond_3

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->eofReached:Z

    goto :goto_0

    :cond_3
    if-nez p1, :cond_1

    :cond_4
    :goto_0
    return v2
.end method

.method private getJavaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->charsetTable:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    return-object p1
.end method

.method private guessEncoding()Ljava/lang/String;
    .locals 12

    .line 1
    iget v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufEnd:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbuf:[B

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    const/16 v4, -0x11

    const-string v5, "UTF-8"

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v3, v4, :cond_19

    const/16 v4, 0x3f

    const/16 v9, 0x3c

    const-string v10, "UCS-4"

    if-eq v3, v9, :cond_13

    const/16 v5, 0x4c

    if-eq v3, v5, :cond_11

    const/4 v5, -0x1

    const/4 v11, -0x2

    if-eq v3, v11, :cond_e

    if-eq v3, v5, :cond_b

    if-eqz v3, :cond_1

    .line 3
    iput-boolean v6, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->useDeclaredEncoding:Z

    return-object v2

    .line 4
    :cond_1
    aget-byte v3, v0, v6

    if-eqz v3, :cond_5

    if-eq v3, v9, :cond_2

    return-object v2

    .line 5
    :cond_2
    aget-byte p0, v0, v8

    if-nez p0, :cond_3

    aget-byte p0, v0, v7

    if-ne p0, v4, :cond_3

    const-string p0, "UnicodeBigUnmarked"

    return-object p0

    .line 6
    :cond_3
    aget-byte p0, v0, v8

    if-nez p0, :cond_4

    aget-byte p0, v0, v7

    if-nez p0, :cond_4

    return-object v10

    :cond_4
    return-object v2

    .line 7
    :cond_5
    aget-byte v3, v0, v8

    if-ne v3, v11, :cond_6

    aget-byte v3, v0, v7

    if-ne v3, v5, :cond_6

    .line 8
    iput v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    return-object v10

    .line 9
    :cond_6
    aget-byte v3, v0, v8

    if-ne v3, v5, :cond_7

    aget-byte v3, v0, v7

    if-ne v3, v11, :cond_7

    .line 10
    iput v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    return-object v10

    .line 11
    :cond_7
    aget-byte p0, v0, v8

    if-ne p0, v9, :cond_8

    aget-byte p0, v0, v7

    if-eqz p0, :cond_9

    :cond_8
    aget-byte p0, v0, v8

    if-nez p0, :cond_a

    aget-byte p0, v0, v7

    if-ne p0, v9, :cond_a

    :cond_9
    return-object v10

    :cond_a
    return-object v2

    .line 12
    :cond_b
    aget-byte v3, v0, v6

    if-ne v3, v11, :cond_d

    .line 13
    aget-byte v2, v0, v8

    if-nez v2, :cond_c

    aget-byte v0, v0, v7

    if-nez v0, :cond_c

    .line 14
    iput v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    return-object v10

    .line 15
    :cond_c
    iput v8, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    const-string p0, "UnicodeLittle"

    return-object p0

    :cond_d
    return-object v2

    .line 16
    :cond_e
    aget-byte v3, v0, v6

    if-ne v3, v5, :cond_10

    .line 17
    aget-byte v2, v0, v8

    if-nez v2, :cond_f

    aget-byte v0, v0, v7

    if-nez v0, :cond_f

    .line 18
    iput v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    return-object v10

    .line 19
    :cond_f
    iput v8, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    const-string p0, "UnicodeBig"

    return-object p0

    :cond_10
    return-object v2

    .line 20
    :cond_11
    aget-byte v1, v0, v6

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_12

    aget-byte v1, v0, v8

    const/16 v3, -0x59

    if-ne v1, v3, :cond_12

    aget-byte v0, v0, v7

    const/16 v1, -0x6c

    if-ne v0, v1, :cond_12

    .line 21
    iput-boolean v6, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->useDeclaredEncoding:Z

    const-string p0, "Cp037"

    return-object p0

    :cond_12
    return-object v2

    .line 22
    :cond_13
    aget-byte v1, v0, v6

    if-eqz v1, :cond_16

    if-eq v1, v4, :cond_14

    return-object v2

    .line 23
    :cond_14
    aget-byte v1, v0, v8

    const/16 v3, 0x78

    if-ne v1, v3, :cond_15

    aget-byte v0, v0, v7

    const/16 v1, 0x6d

    if-ne v0, v1, :cond_15

    .line 24
    iput-boolean v6, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->useDeclaredEncoding:Z

    return-object v5

    :cond_15
    return-object v2

    .line 25
    :cond_16
    aget-byte p0, v0, v8

    if-ne p0, v4, :cond_17

    aget-byte p0, v0, v7

    if-nez p0, :cond_17

    const-string p0, "UnicodeLittleUnmarked"

    return-object p0

    .line 26
    :cond_17
    aget-byte p0, v0, v8

    if-nez p0, :cond_18

    aget-byte p0, v0, v7

    if-nez p0, :cond_18

    return-object v10

    :cond_18
    return-object v2

    .line 27
    :cond_19
    aget-byte v1, v0, v6

    const/16 v3, -0x45

    if-ne v1, v3, :cond_1a

    aget-byte v0, v0, v8

    const/16 v1, -0x41

    if-ne v0, v1, :cond_1a

    .line 28
    iput v7, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    return-object v5

    :cond_1a
    return-object v2
.end method

.method private processXMLDecl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v8, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->decoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbuf:[B

    iget v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufEnd:I

    sub-int v3, v2, v8

    iget-object v4, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbuf:[C

    iget v5, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufPos:I

    array-length v6, v4

    iget-object v7, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->decodeResult:[I

    move v2, v8

    invoke-interface/range {v0 .. v7}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;->decodeXMLDecl([BII[CII[I)V

    .line 3
    iget v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->decodeResult:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    const/4 v0, 0x1

    .line 4
    aget v0, v1, v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufEnd:I

    .line 5
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbuf:[C

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;->parseXMLDeclaration([CII)I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;->getXMLDeclaredEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->getJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-boolean v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->rewindDeclaration:Z

    if-nez v3, :cond_0

    .line 8
    iget v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufPos:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufPos:I

    .line 9
    :cond_0
    iget-boolean v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->useDeclaredEncoding:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    iput v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufEnd:I

    iput v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufPos:I

    .line 11
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->decoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/piccolo/io/CharsetDecoder;->reset()V

    .line 12
    iget-boolean v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->rewindDeclaration:Z

    if-eqz v2, :cond_1

    .line 13
    iput v8, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    goto :goto_0

    .line 14
    :cond_1
    iget v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->minBytesPerChar:I

    mul-int/2addr v0, v2

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    .line 15
    :goto_0
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->setEncoding(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setEncoding(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->encoding:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoderFactory;->createDecoder(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->decoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;

    .line 3
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/piccolo/io/CharsetDecoder;->minBytesPerChar()I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->minBytesPerChar:I

    .line 4
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->decoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLDecoder;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/piccolo/io/CharsetDecoder;->maxBytesPerChar()I

    move-result p1

    iput p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->maxBytesPerChar:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->javaStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$JavaStreamDecoder;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$JavaStreamDecoder;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$JavaStreamDecoder;-><init>(Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->javaStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$JavaStreamDecoder;

    .line 7
    :cond_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->javaStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$JavaStreamDecoder;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->activeStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$XMLStreamDecoder;

    .line 8
    :goto_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->activeStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$XMLStreamDecoder;

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$XMLStreamDecoder;->reset()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->eofReached:Z

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufEnd:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufPos:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufEnd:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    .line 3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->in:Ljava/io/InputStream;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method public mark(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "mark() not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public markSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->activeStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$XMLStreamDecoder;

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$XMLStreamDecoder;->read()I

    move-result p0

    return p0
.end method

.method public read([C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->read([CII)I

    move-result p0

    return p0
.end method

.method public read([CII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->activeStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$XMLStreamDecoder;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$XMLStreamDecoder;->read([CII)I

    move-result p0

    return p0
.end method

.method public ready()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->activeStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$XMLStreamDecoder;

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$XMLStreamDecoder;->ready()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-super {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;->resetInput()V

    .line 21
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufEnd:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufPos:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufEnd:I

    iput v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    return-void
.end method

.method public reset(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;->resetInput()V

    .line 2
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->in:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->eofReached:Z

    .line 4
    iput-boolean p3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->rewindDeclaration:Z

    .line 5
    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->useDeclaredEncoding:Z

    .line 6
    iput p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufEnd:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->bbufPos:I

    .line 7
    iput p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufEnd:I

    iput p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->cbufPos:I

    .line 8
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->fastStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$FastStreamDecoder;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->activeStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$XMLStreamDecoder;

    const/4 p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->fillByteBuffer(Z)I

    if-eqz p2, :cond_1

    .line 10
    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->getJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->encoding:Ljava/lang/String;

    const-string p2, "Unicode"

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->guessEncoding()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->encoding:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p2, "UnicodeLittle"

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    const-string p1, "UnicodeBig"

    .line 14
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->encoding:Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->guessEncoding()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->encoding:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 16
    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->useDeclaredEncoding:Z

    const-string p1, "UTF-8"

    .line 17
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->encoding:Ljava/lang/String;

    .line 18
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->encoding:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->setEncoding(Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->processXMLDecl()V

    return-void
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;->activeStreamDecoder:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$XMLStreamDecoder;

    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader$XMLStreamDecoder;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method
