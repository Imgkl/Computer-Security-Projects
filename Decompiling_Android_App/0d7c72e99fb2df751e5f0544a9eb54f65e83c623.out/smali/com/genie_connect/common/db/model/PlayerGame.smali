.class public Lcom/genie_connect/common/db/model/PlayerGame;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "PlayerGame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/PlayerGame$Properties;,
        Lcom/genie_connect/common/db/model/PlayerGame$PlayerAchievementSyncableFields;,
        Lcom/genie_connect/common/db/model/PlayerGame$PlayerTrophySyncableFields;,
        Lcom/genie_connect/common/db/model/PlayerGame$PlayerGamesSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "playergames"

.field public static final TABLE_NAME:Ljava/lang/String; = "playerGames"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public game:Ljava/lang/Long;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public totalGamePoints:Ljava/lang/Long;

.field public visitor:Ljava/lang/Long;

.field public visitorActive:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "visitorActive"    # Ljava/lang/Boolean;
    .param p2, "modifiedBy"    # Ljava/lang/String;
    .param p3, "importCameFrom"    # Ljava/lang/String;
    .param p4, "game"    # Ljava/lang/Long;
    .param p5, "visitor"    # Ljava/lang/Long;
    .param p6, "modifiedDate"    # Ljava/util/Date;
    .param p7, "id"    # Ljava/lang/Long;
    .param p8, "_id"    # Ljava/lang/String;
    .param p9, "createdBy"    # Ljava/lang/String;
    .param p10, "importBatch"    # Ljava/lang/String;
    .param p11, "totalGamePoints"    # Ljava/lang/Long;
    .param p12, "createdDate"    # Ljava/util/Date;
    .param p13, "importKey"    # Ljava/lang/String;
    .param p14, "_namespace"    # Ljava/lang/String;
    .param p15, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/genie_connect/common/db/model/PlayerGame;->visitorActive:Ljava/lang/Boolean;

    .line 128
    iput-object p2, p0, Lcom/genie_connect/common/db/model/PlayerGame;->modifiedBy:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lcom/genie_connect/common/db/model/PlayerGame;->importCameFrom:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lcom/genie_connect/common/db/model/PlayerGame;->game:Ljava/lang/Long;

    .line 131
    iput-object p5, p0, Lcom/genie_connect/common/db/model/PlayerGame;->visitor:Ljava/lang/Long;

    .line 132
    iput-object p6, p0, Lcom/genie_connect/common/db/model/PlayerGame;->modifiedDate:Ljava/util/Date;

    .line 133
    iput-object p7, p0, Lcom/genie_connect/common/db/model/PlayerGame;->id:Ljava/lang/Long;

    .line 134
    iput-object p8, p0, Lcom/genie_connect/common/db/model/PlayerGame;->_id:Ljava/lang/String;

    .line 135
    iput-object p9, p0, Lcom/genie_connect/common/db/model/PlayerGame;->createdBy:Ljava/lang/String;

    .line 136
    iput-object p10, p0, Lcom/genie_connect/common/db/model/PlayerGame;->importBatch:Ljava/lang/String;

    .line 137
    iput-object p11, p0, Lcom/genie_connect/common/db/model/PlayerGame;->totalGamePoints:Ljava/lang/Long;

    .line 138
    iput-object p12, p0, Lcom/genie_connect/common/db/model/PlayerGame;->createdDate:Ljava/util/Date;

    .line 139
    iput-object p13, p0, Lcom/genie_connect/common/db/model/PlayerGame;->importKey:Ljava/lang/String;

    .line 140
    iput-object p14, p0, Lcom/genie_connect/common/db/model/PlayerGame;->_namespace:Ljava/lang/String;

    .line 141
    iput-object p15, p0, Lcom/genie_connect/common/db/model/PlayerGame;->_dataversion:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/genie_connect/common/db/model/PlayerGame;->id:Ljava/lang/Long;

    .line 124
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 7

    .prologue
    .line 43
    sget-object v0, Lcom/genie_connect/common/db/model/PlayerGame;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "totalGamePoints"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;

    const-string v4, "playerTrophies"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->PLAYERTROPHIES_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    sget-object v6, Lcom/genie_connect/common/db/model/PlayerGame;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5, v6}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "game"

    sget-object v5, Lcom/genie_connect/common/db/model/PlayerGame;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v4, "visitor"

    sget-object v5, Lcom/genie_connect/common/db/model/PlayerGame;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/PlayerGame;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "playergames"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/genie_connect/common/db/model/PlayerGame;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "playerGames"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/genie_connect/common/db/model/PlayerGame;->id:Ljava/lang/Long;

    .line 115
    return-void
.end method
