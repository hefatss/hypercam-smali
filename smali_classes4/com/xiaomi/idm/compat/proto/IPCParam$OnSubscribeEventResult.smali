.class public final Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/compat/proto/IPCParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnSubscribeEventResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult$Builder;",
        ">;",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResultOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

.field public static final EVENTRESULT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eventResult_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-direct {v0}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    .line 3
    const-class v1, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$36300()Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    return-object v0
.end method

.method public static synthetic access$36400(Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->setEventResult(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;)V

    return-void
.end method

.method public static synthetic access$36500(Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->mergeEventResult(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;)V

    return-void
.end method

.method public static synthetic access$36600(Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->clearEventResult()V

    return-void
.end method

.method private clearEventResult()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->eventResult_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    return-object v0
.end method

.method private mergeEventResult(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->eventResult_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->eventResult_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;

    .line 5
    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;->newBuilder(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;

    iput-object p1, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->eventResult_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->eventResult_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEventResult(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->eventResult_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lcom/xiaomi/idm/compat/proto/IPCParam$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    .line 5
    const-class p1, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    monitor-enter p1

    .line 6
    :try_start_0
    sget-object p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    .line 7
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 9
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 10
    :pswitch_3
    sget-object p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string p2, "eventResult_"

    aput-object p2, p0, p1

    const-string p1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    .line 11
    sget-object p2, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_5
    new-instance p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult$Builder;

    invoke-direct {p0, p2}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult$Builder;-><init>(Lcom/xiaomi/idm/compat/proto/IPCParam$1;)V

    return-object p0

    .line 13
    :pswitch_6
    new-instance p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;

    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEventResult()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->eventResult_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;->getDefaultInstance()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public hasEventResult()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnSubscribeEventResult;->eventResult_:Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEventResult;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
