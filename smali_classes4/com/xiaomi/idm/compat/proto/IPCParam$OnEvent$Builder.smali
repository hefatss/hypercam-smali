.class public final Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/idm/compat/proto/IPCParam$OnEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent$Builder;",
        ">;",
        "Lcom/xiaomi/idm/compat/proto/IPCParam$OnEventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;->access$32100()Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/idm/compat/proto/IPCParam$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdmEvent()Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;->access$32400(Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;)V

    return-object p0
.end method

.method public getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;

    invoke-virtual {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;->getIdmEvent()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    move-result-object p0

    return-object p0
.end method

.method public hasIdmEvent()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;

    invoke-virtual {p0}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;->hasIdmEvent()Z

    move-result p0

    return p0
.end method

.method public mergeIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;->access$32300(Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method

.method public setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent$Builder;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;->access$32200(Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method

.method public setIdmEvent(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;->access$32200(Lcom/xiaomi/idm/compat/proto/IPCParam$OnEvent;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMEvent;)V

    return-object p0
.end method
