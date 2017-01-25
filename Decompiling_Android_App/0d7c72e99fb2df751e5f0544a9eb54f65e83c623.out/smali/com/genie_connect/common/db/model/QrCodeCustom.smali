.class public Lcom/genie_connect/common/db/model/QrCodeCustom;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "QrCodeCustom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/QrCodeCustom$Properties;,
        Lcom/genie_connect/common/db/model/QrCodeCustom$QrCodeCustomSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "qrcodes_custom"

.field public static final TABLE_NAME:Ljava/lang/String; = "QrCodeCustom"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public displayname:Ljava/lang/String;

.field public entityId:Ljava/lang/Long;

.field public id:Ljava/lang/Long;

.field public theEntity:Ljava/lang/String;

.field public time:Ljava/util/Date;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/genie_connect/common/db/model/QrCodeCustom;->id:Ljava/lang/Long;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/util/Date;
    .param p4, "displayname"    # Ljava/lang/String;
    .param p5, "code"    # Ljava/lang/String;
    .param p6, "theEntity"    # Ljava/lang/String;
    .param p7, "entityId"    # Ljava/lang/Long;
    .param p8, "_namespace"    # Ljava/lang/String;
    .param p9, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/genie_connect/common/db/model/QrCodeCustom;->id:Ljava/lang/Long;

    .line 97
    iput-object p2, p0, Lcom/genie_connect/common/db/model/QrCodeCustom;->type:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/genie_connect/common/db/model/QrCodeCustom;->time:Ljava/util/Date;

    .line 99
    iput-object p4, p0, Lcom/genie_connect/common/db/model/QrCodeCustom;->displayname:Ljava/lang/String;

    .line 100
    iput-object p5, p0, Lcom/genie_connect/common/db/model/QrCodeCustom;->code:Ljava/lang/String;

    .line 101
    iput-object p6, p0, Lcom/genie_connect/common/db/model/QrCodeCustom;->theEntity:Ljava/lang/String;

    .line 102
    iput-object p7, p0, Lcom/genie_connect/common/db/model/QrCodeCustom;->entityId:Ljava/lang/Long;

    .line 103
    iput-object p8, p0, Lcom/genie_connect/common/db/model/QrCodeCustom;->_namespace:Ljava/lang/String;

    .line 104
    iput-object p9, p0, Lcom/genie_connect/common/db/model/QrCodeCustom;->_dataversion:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "qrcodes_custom"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/genie_connect/common/db/model/QrCodeCustom;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "QrCodeCustom"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/genie_connect/common/db/model/QrCodeCustom;->id:Ljava/lang/Long;

    .line 84
    return-void
.end method
