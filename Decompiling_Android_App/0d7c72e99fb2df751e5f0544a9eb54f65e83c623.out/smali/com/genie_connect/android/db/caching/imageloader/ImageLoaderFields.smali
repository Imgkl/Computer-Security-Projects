.class interface abstract Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderFields;
.super Ljava/lang/Object;
.source "ImageLoaderFields.java"


# static fields
.field public static final CACHE_DIR_EPHEMERAL:Ljava/lang/String;

.field public static final CACHE_DIR_PERSISTENT:Ljava/lang/String;

.field public static final DEFAULT_IMAGE_DIRECTORY:Ljava/lang/String;

.field public static final IMAGE_MAX_SIZE:I = 0x1e0

.field public static final IMAGE_SOURCE_ASSETS:I = 0x3eb

.field public static final IMAGE_SOURCE_DISK:I = 0x3ea

.field public static final IMAGE_SOURCE_MEMORY:I = 0x3e8

.field public static final IMAGE_SOURCE_NETWORK:I = 0x3e9

.field public static final MAX_FILE_AGE_IN_DAYS:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image_ephemeral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderFields;->CACHE_DIR_EPHEMERAL:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image_persistent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderFields;->CACHE_DIR_PERSISTENT:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/db/caching/imageloader/ImageLoaderFields;->DEFAULT_IMAGE_DIRECTORY:Ljava/lang/String;

    return-void
.end method
