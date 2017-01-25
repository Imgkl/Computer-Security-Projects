.class Lorg/apache/ignite/internal/GridUpdateNotifier$1;
.super Ljava/lang/Object;
.source "GridUpdateNotifier.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/GridUpdateNotifier;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/GridKernalGateway;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/GridUpdateNotifier;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/GridUpdateNotifier;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lorg/apache/ignite/internal/GridUpdateNotifier$1;->this$0:Lorg/apache/ignite/internal/GridUpdateNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 3
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "sysId"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, ".dtd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
