.class public Lcom/genie_connect/common/db/model/Trophy;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Trophy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Trophy$Properties;,
        Lcom/genie_connect/common/db/model/Trophy$TrophyThresholdFields;,
        Lcom/genie_connect/common/db/model/Trophy$TrophySyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "trophies"

.field public static final TABLE_NAME:Ljava/lang/String; = "trophies"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public game:Ljava/lang/Long;

.field public icon:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isVisible:Ljava/lang/Boolean;

.field public maxTrophyPoints:Ljava/lang/Long;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public primaryInfoPage:Ljava/lang/Long;

.field public runningTime_from:Ljava/util/Date;

.field public runningTime_to:Ljava/util/Date;

.field public sponsorCampaign:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Trophy;->id:Ljava/lang/Long;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "primaryInfoPage"    # Ljava/lang/Long;
    .param p2, "icon"    # Ljava/lang/String;
    .param p3, "maxTrophyPoints"    # Ljava/lang/Long;
    .param p4, "modifiedBy"    # Ljava/lang/String;
    .param p5, "importCameFrom"    # Ljava/lang/String;
    .param p6, "game"    # Ljava/lang/Long;
    .param p7, "runningTime_to"    # Ljava/util/Date;
    .param p8, "runningTime_from"    # Ljava/util/Date;
    .param p9, "modifiedDate"    # Ljava/util/Date;
    .param p10, "id"    # Ljava/lang/Long;
    .param p11, "sponsorCampaign"    # Ljava/lang/Long;
    .param p12, "isVisible"    # Ljava/lang/Boolean;
    .param p13, "_id"    # Ljava/lang/String;
    .param p14, "createdBy"    # Ljava/lang/String;
    .param p15, "name"    # Ljava/lang/String;
    .param p16, "importBatch"    # Ljava/lang/String;
    .param p17, "createdDate"    # Ljava/util/Date;
    .param p18, "importKey"    # Ljava/lang/String;
    .param p19, "_namespace"    # Ljava/lang/String;
    .param p20, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Trophy;->primaryInfoPage:Ljava/lang/Long;

    .line 144
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Trophy;->icon:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Trophy;->maxTrophyPoints:Ljava/lang/Long;

    .line 146
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Trophy;->modifiedBy:Ljava/lang/String;

    .line 147
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Trophy;->importCameFrom:Ljava/lang/String;

    .line 148
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Trophy;->game:Ljava/lang/Long;

    .line 149
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Trophy;->runningTime_to:Ljava/util/Date;

    .line 150
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Trophy;->runningTime_from:Ljava/util/Date;

    .line 151
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Trophy;->modifiedDate:Ljava/util/Date;

    .line 152
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Trophy;->id:Ljava/lang/Long;

    .line 153
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Trophy;->sponsorCampaign:Ljava/lang/Long;

    .line 154
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Trophy;->isVisible:Ljava/lang/Boolean;

    .line 155
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Trophy;->_id:Ljava/lang/String;

    .line 156
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Trophy;->createdBy:Ljava/lang/String;

    .line 157
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Trophy;->name:Ljava/lang/String;

    .line 158
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Trophy;->importBatch:Ljava/lang/String;

    .line 159
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Trophy;->createdDate:Ljava/util/Date;

    .line 160
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Trophy;->importKey:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Trophy;->_namespace:Ljava/lang/String;

    .line 162
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Trophy;->_dataversion:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 69
    sget-object v0, Lcom/genie_connect/common/db/model/Trophy;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "icon"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "isVisible"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "secondaryInfoPages"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "secondaryInfoPages"

    sget-object v7, Lcom/genie_connect/common/db/model/Trophy;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;

    const-string/jumbo v4, "thresholds"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->TROPHYTHRESHOLD_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    sget-object v6, Lcom/genie_connect/common/db/model/Trophy;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5, v6}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "runningTime"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->RUNNING_TIME_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "game"

    sget-object v5, Lcom/genie_connect/common/db/model/Game;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "primaryInfoPage"

    sget-object v5, Lcom/genie_connect/common/db/model/InfoPage;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "sponsorCampaign"

    sget-object v5, Lcom/genie_connect/common/db/model/AdCampaign;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Trophy;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string/jumbo v0, "trophies"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Trophy;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "trophies"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Trophy;->id:Ljava/lang/Long;

    .line 131
    return-void
.end method
