.class public Lcom/eventgenie/android/utils/managers/GenieAssetManager;
.super Ljava/lang/Object;
.source "GenieAssetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/managers/GenieAssetManager$1;,
        Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;
    }
.end annotation


# static fields
.field public static final DIRECTORY_DATABASE:Ljava/lang/String; = "databases"

.field public static final DIRECTORY_IMAGE_CACHE:Ljava/lang/String; = "image_precache"

.field public static final DIRECTORY_NAVIGATION:Ljava/lang/String; = "map2D"


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private final mDatabaseFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNaviFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/managers/GenieAssetManager;->mAssetManager:Landroid/content/res/AssetManager;

    .line 64
    sget-object v0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->NAVIGATION:Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/managers/GenieAssetManager;->getList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/managers/GenieAssetManager;->mNaviFiles:Ljava/util/Set;

    .line 65
    sget-object v0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->DATABASES:Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/managers/GenieAssetManager;->getList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/managers/GenieAssetManager;->mDatabaseFiles:Ljava/util/Set;

    .line 66
    sget-object v0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->IMAGE_CACHE:Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/managers/GenieAssetManager;->getList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/managers/GenieAssetManager;->mImageCache:Ljava/util/Set;

    .line 67
    return-void
.end method

.method private getList(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "baseDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 98
    .local v0, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/GenieAssetManager;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getStreamForFile(Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "group"    # Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/utils/managers/GenieAssetManager;->hasFile(Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/GenieAssetManager;->mAssetManager:Landroid/content/res/AssetManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    :cond_0
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public hasFile(Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;Ljava/lang/String;)Z
    .locals 2
    .param p1, "group"    # Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$1;->$SwitchMap$com$eventgenie$android$utils$managers$GenieAssetManager$AssetGroup:[I

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/GenieAssetManager;->mNaviFiles:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/GenieAssetManager;->mDatabaseFiles:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/GenieAssetManager;->mImageCache:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
