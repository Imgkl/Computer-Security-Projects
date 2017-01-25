.class public Lcom/genie_connect/common/db/model/InAppAction;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "InAppAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/InAppAction$Properties;,
        Lcom/genie_connect/common/db/model/InAppAction$InAppActionSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "inappactions"

.field public static final TABLE_NAME:Ljava/lang/String; = "inAppActions"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public action:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public endDate:Ljava/util/Date;

.field public httpRequestBackground:Ljava/lang/Boolean;

.field public httpRequestBody:Ljava/lang/String;

.field public httpRequestMethod:Ljava/lang/String;

.field public httpRequestRetry:Ljava/lang/Long;

.field public httpRequestUrl:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public intentEntityKey:Ljava/lang/String;

.field public intentEntityKind:Ljava/lang/String;

.field public intentUri:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public platforms:Ljava/lang/String;

.field public repeat:Ljava/lang/Long;

.field public startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/genie_connect/common/db/model/InAppAction;->id:Ljava/lang/Long;

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "startDate"    # Ljava/util/Date;
    .param p2, "httpRequestMethod"    # Ljava/lang/String;
    .param p3, "modifiedBy"    # Ljava/lang/String;
    .param p4, "httpRequestRetry"    # Ljava/lang/Long;
    .param p5, "httpRequestUrl"    # Ljava/lang/String;
    .param p6, "httpRequestBackground"    # Ljava/lang/Boolean;
    .param p7, "intentEntityKey"    # Ljava/lang/String;
    .param p8, "endDate"    # Ljava/util/Date;
    .param p9, "importCameFrom"    # Ljava/lang/String;
    .param p10, "platforms"    # Ljava/lang/String;
    .param p11, "repeat"    # Ljava/lang/Long;
    .param p12, "intentUri"    # Ljava/lang/String;
    .param p13, "modifiedDate"    # Ljava/util/Date;
    .param p14, "id"    # Ljava/lang/Long;
    .param p15, "_id"    # Ljava/lang/String;
    .param p16, "createdBy"    # Ljava/lang/String;
    .param p17, "httpRequestBody"    # Ljava/lang/String;
    .param p18, "intentEntityKind"    # Ljava/lang/String;
    .param p19, "name"    # Ljava/lang/String;
    .param p20, "importBatch"    # Ljava/lang/String;
    .param p21, "action"    # Ljava/lang/String;
    .param p22, "createdDate"    # Ljava/util/Date;
    .param p23, "importKey"    # Ljava/lang/String;
    .param p24, "_namespace"    # Ljava/lang/String;
    .param p25, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/genie_connect/common/db/model/InAppAction;->startDate:Ljava/util/Date;

    .line 152
    iput-object p2, p0, Lcom/genie_connect/common/db/model/InAppAction;->httpRequestMethod:Ljava/lang/String;

    .line 153
    iput-object p3, p0, Lcom/genie_connect/common/db/model/InAppAction;->modifiedBy:Ljava/lang/String;

    .line 154
    iput-object p4, p0, Lcom/genie_connect/common/db/model/InAppAction;->httpRequestRetry:Ljava/lang/Long;

    .line 155
    iput-object p5, p0, Lcom/genie_connect/common/db/model/InAppAction;->httpRequestUrl:Ljava/lang/String;

    .line 156
    iput-object p6, p0, Lcom/genie_connect/common/db/model/InAppAction;->httpRequestBackground:Ljava/lang/Boolean;

    .line 157
    iput-object p7, p0, Lcom/genie_connect/common/db/model/InAppAction;->intentEntityKey:Ljava/lang/String;

    .line 158
    iput-object p8, p0, Lcom/genie_connect/common/db/model/InAppAction;->endDate:Ljava/util/Date;

    .line 159
    iput-object p9, p0, Lcom/genie_connect/common/db/model/InAppAction;->importCameFrom:Ljava/lang/String;

    .line 160
    iput-object p10, p0, Lcom/genie_connect/common/db/model/InAppAction;->platforms:Ljava/lang/String;

    .line 161
    iput-object p11, p0, Lcom/genie_connect/common/db/model/InAppAction;->repeat:Ljava/lang/Long;

    .line 162
    iput-object p12, p0, Lcom/genie_connect/common/db/model/InAppAction;->intentUri:Ljava/lang/String;

    .line 163
    iput-object p13, p0, Lcom/genie_connect/common/db/model/InAppAction;->modifiedDate:Ljava/util/Date;

    .line 164
    iput-object p14, p0, Lcom/genie_connect/common/db/model/InAppAction;->id:Ljava/lang/Long;

    .line 165
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InAppAction;->_id:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InAppAction;->createdBy:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InAppAction;->httpRequestBody:Ljava/lang/String;

    .line 168
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InAppAction;->intentEntityKind:Ljava/lang/String;

    .line 169
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InAppAction;->name:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InAppAction;->importBatch:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InAppAction;->action:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InAppAction;->createdDate:Ljava/util/Date;

    .line 173
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InAppAction;->importKey:Ljava/lang/String;

    .line 174
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InAppAction;->_namespace:Ljava/lang/String;

    .line 175
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/InAppAction;->_dataversion:Ljava/lang/String;

    .line 176
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 50
    sget-object v0, Lcom/genie_connect/common/db/model/InAppAction;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0xd

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "action"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "endDate"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "httpRequestBody"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "httpRequestRetry"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "httpRequestMethod"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "httpRequestUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "intentEntityKey"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "intentEntityKind"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "intentUri"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "platforms"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "repeat"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "startDate"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/InAppAction;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "inappactions"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/genie_connect/common/db/model/InAppAction;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "inAppActions"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/genie_connect/common/db/model/InAppAction;->id:Ljava/lang/Long;

    .line 139
    return-void
.end method
