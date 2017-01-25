.class final Lcom/github/ignition/support/cache/CacheHelper$1;
.super Ljava/lang/Object;
.source "CacheHelper.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/ignition/support/cache/CacheHelper;->removeExpiredCache(Lcom/github/ignition/support/cache/AbstractCache;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cache:Lcom/github/ignition/support/cache/AbstractCache;

.field final synthetic val$cacheDir:Ljava/io/File;

.field final synthetic val$urlPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/github/ignition/support/cache/AbstractCache;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/github/ignition/support/cache/CacheHelper$1;->val$cacheDir:Ljava/io/File;

    iput-object p2, p0, Lcom/github/ignition/support/cache/CacheHelper$1;->val$cache:Lcom/github/ignition/support/cache/AbstractCache;

    iput-object p3, p0, Lcom/github/ignition/support/cache/CacheHelper$1;->val$urlPrefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/github/ignition/support/cache/CacheHelper$1;->val$cacheDir:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/ignition/support/cache/CacheHelper$1;->val$cache:Lcom/github/ignition/support/cache/AbstractCache;

    iget-object v1, p0, Lcom/github/ignition/support/cache/CacheHelper$1;->val$urlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/ignition/support/cache/AbstractCache;->getFileNameForKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
