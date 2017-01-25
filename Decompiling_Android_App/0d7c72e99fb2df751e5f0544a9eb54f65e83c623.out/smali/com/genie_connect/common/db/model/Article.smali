.class public Lcom/genie_connect/common/db/model/Article;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Article.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Article$Properties;,
        Lcom/genie_connect/common/db/model/Article$ArticleSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "articles"

.field public static final TABLE_NAME:Ljava/lang/String; = "articles"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public author:Ljava/lang/String;

.field public brief:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public featured:Ljava/lang/Boolean;

.field public html:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public liveStatus:Ljava/lang/Long;

.field public mainImage:Ljava/lang/Long;

.field public mainImageUrl:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public scheduledDate:Ljava/util/Date;

.field public scheduledLiveStatus:Ljava/lang/Long;

.field public scheduledTaskName:Ljava/lang/String;

.field public shareUrl:Ljava/lang/String;

.field public thumbImage:Ljava/lang/Long;

.field public thumbImageUrl:Ljava/lang/String;

.field public timestamp:Ljava/util/Date;

.field public type:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Article;->id:Ljava/lang/Long;

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "liveStatus"    # Ljava/lang/Long;
    .param p2, "thumbImage"    # Ljava/lang/Long;
    .param p3, "modifiedBy"    # Ljava/lang/String;
    .param p4, "featured"    # Ljava/lang/Boolean;
    .param p5, "type"    # Ljava/lang/Long;
    .param p6, "mainImage"    # Ljava/lang/Long;
    .param p7, "scheduledDate"    # Ljava/util/Date;
    .param p8, "id"    # Ljava/lang/Long;
    .param p9, "timestamp"    # Ljava/util/Date;
    .param p10, "author"    # Ljava/lang/String;
    .param p11, "scheduledLiveStatus"    # Ljava/lang/Long;
    .param p12, "_id"    # Ljava/lang/String;
    .param p13, "importBatch"    # Ljava/lang/String;
    .param p14, "name"    # Ljava/lang/String;
    .param p15, "createdDate"    # Ljava/util/Date;
    .param p16, "scheduledTaskName"    # Ljava/lang/String;
    .param p17, "importCameFrom"    # Ljava/lang/String;
    .param p18, "mainImageUrl"    # Ljava/lang/String;
    .param p19, "modifiedDate"    # Ljava/util/Date;
    .param p20, "createdBy"    # Ljava/lang/String;
    .param p21, "thumbImageUrl"    # Ljava/lang/String;
    .param p22, "shareUrl"    # Ljava/lang/String;
    .param p23, "html"    # Ljava/lang/String;
    .param p24, "brief"    # Ljava/lang/String;
    .param p25, "importKey"    # Ljava/lang/String;
    .param p26, "_namespace"    # Ljava/lang/String;
    .param p27, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Article;->liveStatus:Ljava/lang/Long;

    .line 156
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Article;->thumbImage:Ljava/lang/Long;

    .line 157
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Article;->modifiedBy:Ljava/lang/String;

    .line 158
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Article;->featured:Ljava/lang/Boolean;

    .line 159
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Article;->type:Ljava/lang/Long;

    .line 160
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Article;->mainImage:Ljava/lang/Long;

    .line 161
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Article;->scheduledDate:Ljava/util/Date;

    .line 162
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Article;->id:Ljava/lang/Long;

    .line 163
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Article;->timestamp:Ljava/util/Date;

    .line 164
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Article;->author:Ljava/lang/String;

    .line 165
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Article;->scheduledLiveStatus:Ljava/lang/Long;

    .line 166
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Article;->_id:Ljava/lang/String;

    .line 167
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Article;->importBatch:Ljava/lang/String;

    .line 168
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Article;->name:Ljava/lang/String;

    .line 169
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Article;->createdDate:Ljava/util/Date;

    .line 170
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Article;->scheduledTaskName:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Article;->importCameFrom:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Article;->mainImageUrl:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Article;->modifiedDate:Ljava/util/Date;

    .line 174
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Article;->createdBy:Ljava/lang/String;

    .line 175
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Article;->thumbImageUrl:Ljava/lang/String;

    .line 176
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Article;->shareUrl:Ljava/lang/String;

    .line 177
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Article;->html:Ljava/lang/String;

    .line 178
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Article;->brief:Ljava/lang/String;

    .line 179
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Article;->importKey:Ljava/lang/String;

    .line 180
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Article;->_namespace:Ljava/lang/String;

    .line 181
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Article;->_dataversion:Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 71
    sget-object v0, Lcom/genie_connect/common/db/model/Article;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "author"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "brief"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "featured"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "html"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "liveStatus"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "mainImageUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "shareUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "thumbImageUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "timestamp"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "type"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "articleGroups"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "articleGroups"

    sget-object v7, Lcom/genie_connect/common/db/model/Article;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Article;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "articles"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Article;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "articles"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Article;->id:Ljava/lang/Long;

    .line 143
    return-void
.end method
