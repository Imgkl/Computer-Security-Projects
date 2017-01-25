.class Lorg/apache/ignite/internal/util/IgniteUtils$DeploymentHostnameVerifier;
.super Ljava/lang/Object;
.source "IgniteUtils.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/IgniteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeploymentHostnameVerifier"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/IgniteUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/IgniteUtils$1;

    .prologue
    .line 2587
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/IgniteUtils$DeploymentHostnameVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "ses"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 2591
    const/4 v0, 0x1

    return v0
.end method
