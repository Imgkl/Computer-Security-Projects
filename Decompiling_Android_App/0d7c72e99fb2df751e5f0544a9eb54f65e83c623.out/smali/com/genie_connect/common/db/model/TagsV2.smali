.class public Lcom/genie_connect/common/db/model/TagsV2;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "TagsV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/TagsV2$Properties;,
        Lcom/genie_connect/common/db/model/TagsV2$TagV2SyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "tagsv2"

.field public static final TABLE_NAME:Ljava/lang/String; = "tagsV2"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public archivedDate:Ljava/util/Date;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public entityBitMask:Ljava/lang/Long;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isArchived:Ljava/lang/Boolean;

.field public isRootParent:Ljava/lang/Boolean;

.field public label:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public noChildren:Ljava/lang/Long;

.field public parent:Ljava/lang/Long;

.field public path:Ljava/lang/String;

.field public sponsorCampaign:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/genie_connect/common/db/model/TagsV2;->id:Ljava/lang/Long;

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "noChildren"    # Ljava/lang/Long;
    .param p3, "parent"    # Ljava/lang/Long;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "importCameFrom"    # Ljava/lang/String;
    .param p6, "isArchived"    # Ljava/lang/Boolean;
    .param p7, "modifiedDate"    # Ljava/util/Date;
    .param p8, "id"    # Ljava/lang/Long;
    .param p9, "sponsorCampaign"    # Ljava/lang/Long;
    .param p10, "entityBitMask"    # Ljava/lang/Long;
    .param p11, "isRootParent"    # Ljava/lang/Boolean;
    .param p12, "_id"    # Ljava/lang/String;
    .param p13, "createdBy"    # Ljava/lang/String;
    .param p14, "importBatch"    # Ljava/lang/String;
    .param p15, "path"    # Ljava/lang/String;
    .param p16, "archivedDate"    # Ljava/util/Date;
    .param p17, "createdDate"    # Ljava/util/Date;
    .param p18, "importKey"    # Ljava/lang/String;
    .param p19, "_namespace"    # Ljava/lang/String;
    .param p20, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/genie_connect/common/db/model/TagsV2;->modifiedBy:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/genie_connect/common/db/model/TagsV2;->noChildren:Ljava/lang/Long;

    .line 139
    iput-object p3, p0, Lcom/genie_connect/common/db/model/TagsV2;->parent:Ljava/lang/Long;

    .line 140
    iput-object p4, p0, Lcom/genie_connect/common/db/model/TagsV2;->label:Ljava/lang/String;

    .line 141
    iput-object p5, p0, Lcom/genie_connect/common/db/model/TagsV2;->importCameFrom:Ljava/lang/String;

    .line 142
    iput-object p6, p0, Lcom/genie_connect/common/db/model/TagsV2;->isArchived:Ljava/lang/Boolean;

    .line 143
    iput-object p7, p0, Lcom/genie_connect/common/db/model/TagsV2;->modifiedDate:Ljava/util/Date;

    .line 144
    iput-object p8, p0, Lcom/genie_connect/common/db/model/TagsV2;->id:Ljava/lang/Long;

    .line 145
    iput-object p9, p0, Lcom/genie_connect/common/db/model/TagsV2;->sponsorCampaign:Ljava/lang/Long;

    .line 146
    iput-object p10, p0, Lcom/genie_connect/common/db/model/TagsV2;->entityBitMask:Ljava/lang/Long;

    .line 147
    iput-object p11, p0, Lcom/genie_connect/common/db/model/TagsV2;->isRootParent:Ljava/lang/Boolean;

    .line 148
    iput-object p12, p0, Lcom/genie_connect/common/db/model/TagsV2;->_id:Ljava/lang/String;

    .line 149
    iput-object p13, p0, Lcom/genie_connect/common/db/model/TagsV2;->createdBy:Ljava/lang/String;

    .line 150
    iput-object p14, p0, Lcom/genie_connect/common/db/model/TagsV2;->importBatch:Ljava/lang/String;

    .line 151
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/TagsV2;->path:Ljava/lang/String;

    .line 152
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/TagsV2;->archivedDate:Ljava/util/Date;

    .line 153
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/TagsV2;->createdDate:Ljava/util/Date;

    .line 154
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/TagsV2;->importKey:Ljava/lang/String;

    .line 155
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/TagsV2;->_namespace:Ljava/lang/String;

    .line 156
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/TagsV2;->_dataversion:Ljava/lang/String;

    .line 157
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 60
    sget-object v0, Lcom/genie_connect/common/db/model/TagsV2;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "archivedDate"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "id"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "importCameFrom"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "isArchived"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "isRootParent"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "label"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "modifiedDate"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "noChildren"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "path"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "parent"

    sget-object v5, Lcom/genie_connect/common/db/model/TagsV2;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "sponsorCampaign"

    sget-object v5, Lcom/genie_connect/common/db/model/AdCampaign;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/TagsV2;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string/jumbo v0, "tagsv2"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/genie_connect/common/db/model/TagsV2;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string/jumbo v0, "tagsV2"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/genie_connect/common/db/model/TagsV2;->id:Ljava/lang/Long;

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TAGSV2 {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/common/db/model/TagsV2;->id:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, "parent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/common/db/model/TagsV2;->parent:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/common/db/model/TagsV2;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, "label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/common/db/model/TagsV2;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "sponsorCampaign: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/common/db/model/TagsV2;->sponsorCampaign:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
