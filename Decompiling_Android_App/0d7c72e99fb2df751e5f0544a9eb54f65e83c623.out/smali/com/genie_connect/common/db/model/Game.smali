.class public Lcom/genie_connect/common/db/model/Game;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Game$Properties;,
        Lcom/genie_connect/common/db/model/Game$GameSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "games"

.field public static final TABLE_NAME:Ljava/lang/String; = "games"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public featured:Ljava/lang/Boolean;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isVisible:Ljava/lang/Boolean;

.field public maxGamePoints:Ljava/lang/Long;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public primaryInfoPage:Ljava/lang/Long;

.field public runningTime_from:Ljava/util/Date;

.field public runningTime_to:Ljava/util/Date;

.field public scoreDisplayStyle:Ljava/lang/Long;

.field public sponsorCampaign:Ljava/lang/Long;

.field public thumb:Ljava/lang/Long;

.field public thumbUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Game;->id:Ljava/lang/Long;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "primaryInfoPage"    # Ljava/lang/Long;
    .param p2, "modifiedBy"    # Ljava/lang/String;
    .param p3, "featured"    # Ljava/lang/Boolean;
    .param p4, "importCameFrom"    # Ljava/lang/String;
    .param p5, "runningTime_to"    # Ljava/util/Date;
    .param p6, "runningTime_from"    # Ljava/util/Date;
    .param p7, "scoreDisplayStyle"    # Ljava/lang/Long;
    .param p8, "modifiedDate"    # Ljava/util/Date;
    .param p9, "maxGamePoints"    # Ljava/lang/Long;
    .param p10, "id"    # Ljava/lang/Long;
    .param p11, "sponsorCampaign"    # Ljava/lang/Long;
    .param p12, "isVisible"    # Ljava/lang/Boolean;
    .param p13, "_id"    # Ljava/lang/String;
    .param p14, "createdBy"    # Ljava/lang/String;
    .param p15, "name"    # Ljava/lang/String;
    .param p16, "importBatch"    # Ljava/lang/String;
    .param p17, "thumbUrl"    # Ljava/lang/String;
    .param p18, "thumb"    # Ljava/lang/Long;
    .param p19, "createdDate"    # Ljava/util/Date;
    .param p20, "importKey"    # Ljava/lang/String;
    .param p21, "_namespace"    # Ljava/lang/String;
    .param p22, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Game;->primaryInfoPage:Ljava/lang/Long;

    .line 136
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Game;->modifiedBy:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Game;->featured:Ljava/lang/Boolean;

    .line 138
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Game;->importCameFrom:Ljava/lang/String;

    .line 139
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Game;->runningTime_to:Ljava/util/Date;

    .line 140
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Game;->runningTime_from:Ljava/util/Date;

    .line 141
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Game;->scoreDisplayStyle:Ljava/lang/Long;

    .line 142
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Game;->modifiedDate:Ljava/util/Date;

    .line 143
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Game;->maxGamePoints:Ljava/lang/Long;

    .line 144
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Game;->id:Ljava/lang/Long;

    .line 145
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Game;->sponsorCampaign:Ljava/lang/Long;

    .line 146
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Game;->isVisible:Ljava/lang/Boolean;

    .line 147
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Game;->_id:Ljava/lang/String;

    .line 148
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Game;->createdBy:Ljava/lang/String;

    .line 149
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Game;->name:Ljava/lang/String;

    .line 150
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Game;->importBatch:Ljava/lang/String;

    .line 151
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Game;->thumbUrl:Ljava/lang/String;

    .line 152
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Game;->thumb:Ljava/lang/Long;

    .line 153
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Game;->createdDate:Ljava/util/Date;

    .line 154
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Game;->importKey:Ljava/lang/String;

    .line 155
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Game;->_namespace:Ljava/lang/String;

    .line 156
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Game;->_dataversion:Ljava/lang/String;

    .line 157
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 60
    sget-object v0, Lcom/genie_connect/common/db/model/Game;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "featured"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

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

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "scoreDisplayStyle"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "thumbUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "secondaryInfoPages"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "secondaryInfoPages"

    sget-object v7, Lcom/genie_connect/common/db/model/Game;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "primaryInfoPage"

    sget-object v5, Lcom/genie_connect/common/db/model/InfoPage;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "sponsorCampaign"

    sget-object v5, Lcom/genie_connect/common/db/model/AdCampaign;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Game;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "games"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Game;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "games"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Game;->id:Ljava/lang/Long;

    .line 123
    return-void
.end method
