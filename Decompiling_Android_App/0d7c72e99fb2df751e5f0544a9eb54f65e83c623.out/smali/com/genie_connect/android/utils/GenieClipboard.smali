.class public Lcom/genie_connect/android/utils/GenieClipboard;
.super Ljava/lang/Object;
.source "GenieClipboard.java"


# static fields
.field public static final CACHED_BUNDLE_KEY:Ljava/lang/String; = "cached_bundle_key"

.field private static mInstance:Lcom/genie_connect/android/utils/GenieClipboard;


# instance fields
.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/genie_connect/android/utils/GenieClipboard;

    invoke-direct {v0}, Lcom/genie_connect/android/utils/GenieClipboard;-><init>()V

    sput-object v0, Lcom/genie_connect/android/utils/GenieClipboard;->mInstance:Lcom/genie_connect/android/utils/GenieClipboard;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/utils/GenieClipboard;->mCache:Ljava/util/Map;

    .line 22
    return-void
.end method

.method public static getIntance()Lcom/genie_connect/android/utils/GenieClipboard;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/genie_connect/android/utils/GenieClipboard;->mInstance:Lcom/genie_connect/android/utils/GenieClipboard;

    return-object v0
.end method


# virtual methods
.method public addObject(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Landroid/os/Bundle;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/genie_connect/android/utils/GenieClipboard;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public getObject(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/genie_connect/android/utils/GenieClipboard;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method
