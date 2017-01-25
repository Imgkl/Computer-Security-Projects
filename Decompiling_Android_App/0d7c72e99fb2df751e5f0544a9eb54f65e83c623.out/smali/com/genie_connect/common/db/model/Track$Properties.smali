.class public Lcom/genie_connect/common/db/model/Track$Properties;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/model/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final Colour:Lde/greenrobot/dao/Property;

.field public static final CreatedBy:Lde/greenrobot/dao/Property;

.field public static final CreatedDate:Lde/greenrobot/dao/Property;

.field public static final ImportBatch:Lde/greenrobot/dao/Property;

.field public static final ImportCameFrom:Lde/greenrobot/dao/Property;

.field public static final ImportKey:Lde/greenrobot/dao/Property;

.field public static final ModifiedBy:Lde/greenrobot/dao/Property;

.field public static final ModifiedDate:Lde/greenrobot/dao/Property;

.field public static final Name:Lde/greenrobot/dao/Property;

.field public static final Priority:Lde/greenrobot/dao/Property;

.field public static final _dataversion:Lde/greenrobot/dao/Property;

.field public static final _id:Lde/greenrobot/dao/Property;

.field public static final _namespace:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 58
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/String;

    const-string v3, "modifiedBy"

    const-string v5, "modifiedBy"

    const-string/jumbo v6, "tracks"

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/Track$Properties;->ModifiedBy:Lde/greenrobot/dao/Property;

    .line 59
    new-instance v2, Lde/greenrobot/dao/Property;

    const-class v4, Ljava/lang/String;

    const-string v5, "importCameFrom"

    const-string v7, "importCameFrom"

    const-string/jumbo v8, "tracks"

    move v3, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Track$Properties;->ImportCameFrom:Lde/greenrobot/dao/Property;

    .line 60
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/util/Date;

    const-string v5, "modifiedDate"

    const-string v7, "modifiedDate"

    const-string/jumbo v8, "tracks"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Track$Properties;->ModifiedDate:Lde/greenrobot/dao/Property;

    .line 61
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "colour"

    const-string v7, "colour"

    const-string/jumbo v8, "tracks"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Track$Properties;->Colour:Lde/greenrobot/dao/Property;

    .line 62
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    const-string v5, "_id"

    const-string v7, "_id"

    const-string/jumbo v8, "tracks"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Track$Properties;->_id:Lde/greenrobot/dao/Property;

    .line 63
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    const-string v5, "createdBy"

    const-string v7, "createdBy"

    const-string/jumbo v8, "tracks"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Track$Properties;->CreatedBy:Lde/greenrobot/dao/Property;

    .line 64
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/Long;

    const-string v5, "priority"

    const-string v7, "priority"

    const-string/jumbo v8, "tracks"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Track$Properties;->Priority:Lde/greenrobot/dao/Property;

    .line 65
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    const-string v5, "importBatch"

    const-string v7, "importBatch"

    const-string/jumbo v8, "tracks"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Track$Properties;->ImportBatch:Lde/greenrobot/dao/Property;

    .line 66
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/String;

    const-string v5, "name"

    const-string v7, "name"

    const-string/jumbo v8, "tracks"

    move v6, v9

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Track$Properties;->Name:Lde/greenrobot/dao/Property;

    .line 67
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/util/Date;

    const-string v5, "createdDate"

    const-string v7, "createdDate"

    const-string/jumbo v8, "tracks"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Track$Properties;->CreatedDate:Lde/greenrobot/dao/Property;

    .line 68
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "importKey"

    const-string v7, "importKey"

    const-string/jumbo v8, "tracks"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Track$Properties;->ImportKey:Lde/greenrobot/dao/Property;

    .line 69
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/String;

    const-string v5, "_namespace"

    const-string v7, "_namespace"

    const-string/jumbo v8, "tracks"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Track$Properties;->_namespace:Lde/greenrobot/dao/Property;

    .line 70
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/String;

    const-string v5, "_dataversion"

    const-string v7, "_dataversion"

    const-string/jumbo v8, "tracks"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Track$Properties;->_dataversion:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
