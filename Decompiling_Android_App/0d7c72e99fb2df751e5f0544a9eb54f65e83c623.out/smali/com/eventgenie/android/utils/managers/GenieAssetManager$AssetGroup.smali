.class public final enum Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;
.super Ljava/lang/Enum;
.source "GenieAssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/managers/GenieAssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

.field public static final enum DATABASES:Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

.field public static final enum IMAGE_CACHE:Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

.field public static final enum NAVIGATION:Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;


# instance fields
.field private final stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    const-string v1, "NAVIGATION"

    const-string v2, "map2D"

    invoke-direct {v0, v1, v3, v2}, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->NAVIGATION:Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    .line 48
    new-instance v0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    const-string v1, "DATABASES"

    const-string v2, "databases"

    invoke-direct {v0, v1, v4, v2}, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->DATABASES:Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    .line 49
    new-instance v0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    const-string v1, "IMAGE_CACHE"

    const-string v2, "image_precache"

    invoke-direct {v0, v1, v5, v2}, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->IMAGE_CACHE:Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    sget-object v1, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->NAVIGATION:Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->DATABASES:Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->IMAGE_CACHE:Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    aput-object v1, v0, v5

    sput-object v0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->$VALUES:[Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->$VALUES:[Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    invoke-virtual {v0}, [Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/GenieAssetManager$AssetGroup;->stringValue:Ljava/lang/String;

    return-object v0
.end method
