.class public final enum Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType$ConnTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final enum BLE_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final BLE_GATT_VALUE:I = 0x10

.field public static final enum BT_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final BT_GATT_VALUE:I = 0x8

.field public static final enum BT_RFCOMM:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final BT_RFCOMM_VALUE:I = 0x4

.field public static final enum COAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final COAP_VALUE:I = 0x20

.field public static final enum IDB:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final IDB_VALUE:I = 0x80

.field public static final enum NFC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final NFC_VALUE:I = 0x40

.field public static final enum UNKNOWN:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final UNKNOWN_VALUE:I = -0x1

.field public static final enum UNRECOGNIZED:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final enum WIFI_P2P_GC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final WIFI_P2P_GC_VALUE:I = 0x1

.field public static final enum WIFI_P2P_GO:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final WIFI_P2P_GO_VALUE:I = 0x0

.field public static final enum WIFI_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final WIFI_SOFTAP_VALUE:I = 0x2

.field public static final enum WIFI_STATION:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final WIFI_STATION_VALUE:I = 0x3

.field public static final enum WLAN_GC_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final WLAN_GC_SOFTAP_VALUE:I = 0x400

.field public static final enum WLAN_P2P:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final WLAN_P2P_VALUE:I = 0x100

.field public static final enum WLAN_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

.field public static final WLAN_SOFTAP_VALUE:I = 0x200

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v1, "WIFI_P2P_GO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_P2P_GO:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 2
    new-instance v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v3, "WIFI_P2P_GC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_P2P_GC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 3
    new-instance v3, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v5, "WIFI_SOFTAP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 4
    new-instance v5, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v7, "WIFI_STATION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_STATION:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 5
    new-instance v7, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v9, "BT_RFCOMM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BT_RFCOMM:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 6
    new-instance v9, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v11, "BT_GATT"

    const/4 v12, 0x5

    const/16 v13, 0x8

    invoke-direct {v9, v11, v12, v13}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BT_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 7
    new-instance v11, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v14, "BLE_GATT"

    const/4 v15, 0x6

    const/16 v12, 0x10

    invoke-direct {v11, v14, v15, v12}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BLE_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 8
    new-instance v12, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v14, "COAP"

    const/4 v15, 0x7

    const/16 v10, 0x20

    invoke-direct {v12, v14, v15, v10}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->COAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 9
    new-instance v10, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v14, "NFC"

    const/16 v15, 0x40

    invoke-direct {v10, v14, v13, v15}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->NFC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 10
    new-instance v14, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v15, "IDB"

    const/16 v13, 0x9

    const/16 v8, 0x80

    invoke-direct {v14, v15, v13, v8}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->IDB:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 11
    new-instance v8, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v15, "WLAN_P2P"

    const/16 v13, 0xa

    const/16 v6, 0x100

    invoke-direct {v8, v15, v13, v6}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_P2P:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 12
    new-instance v6, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v15, "WLAN_SOFTAP"

    const/16 v13, 0xb

    const/16 v4, 0x200

    invoke-direct {v6, v15, v13, v4}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 13
    new-instance v4, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v15, "WLAN_GC_SOFTAP"

    const/16 v13, 0xc

    const/16 v2, 0x400

    invoke-direct {v4, v15, v13, v2}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_GC_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 14
    new-instance v2, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v15, "UNKNOWN"

    const/16 v13, 0xd

    move-object/from16 v16, v4

    const/4 v4, -0x1

    invoke-direct {v2, v15, v13, v4}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->UNKNOWN:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 15
    new-instance v15, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const-string v13, "UNRECOGNIZED"

    move-object/from16 v17, v2

    const/16 v2, 0xe

    invoke-direct {v15, v13, v2, v4}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->UNRECOGNIZED:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/16 v4, 0xf

    new-array v4, v4, [Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    const/4 v13, 0x0

    aput-object v0, v4, v13

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v12, v4, v0

    const/16 v0, 0x8

    aput-object v10, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    aput-object v15, v4, v2

    .line 16
    sput-object v4, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->$VALUES:[Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    .line 17
    new-instance v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType$1;

    invoke-direct {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType$1;-><init>()V

    sput-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_8

    const/16 v0, 0x8

    if-eq p0, v0, :cond_7

    const/16 v0, 0x10

    if-eq p0, v0, :cond_6

    const/16 v0, 0x20

    if-eq p0, v0, :cond_5

    const/16 v0, 0x40

    if-eq p0, v0, :cond_4

    const/16 v0, 0x80

    if-eq p0, v0, :cond_3

    const/16 v0, 0x100

    if-eq p0, v0, :cond_2

    const/16 v0, 0x200

    if-eq p0, v0, :cond_1

    const/16 v0, 0x400

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_GC_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WLAN_P2P:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->IDB:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->NFC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 6
    :cond_5
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->COAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 7
    :cond_6
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BLE_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 8
    :cond_7
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BT_GATT:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 9
    :cond_8
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->BT_RFCOMM:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 10
    :cond_9
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_STATION:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 11
    :cond_a
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_SOFTAP:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 12
    :cond_b
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_P2P_GC:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 13
    :cond_c
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->WIFI_P2P_GO:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0

    .line 14
    :cond_d
    sget-object p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->UNKNOWN:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType$ConnTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->forNumber(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->$VALUES:[Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    invoke-virtual {v0}, [Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->UNRECOGNIZED:Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;

    if-eq p0, v0, :cond_0

    .line 2
    iget p0, p0, Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam$ConnType;->value:I

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
