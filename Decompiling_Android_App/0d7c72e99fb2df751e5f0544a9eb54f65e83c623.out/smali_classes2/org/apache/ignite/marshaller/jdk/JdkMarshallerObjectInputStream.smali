.class Lorg/apache/ignite/marshaller/jdk/JdkMarshallerObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "JdkMarshallerObjectInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final clsLdr:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerObjectInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerObjectInputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "clsLdr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    sget-boolean v0, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerObjectInputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerObjectInputStream;->clsLdr:Ljava/lang/ClassLoader;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerObjectInputStream;->enableResolveObject(Z)Z

    .line 44
    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 2
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerObjectInputStream;->clsLdr:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected resolveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerDummySerializable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 60
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
