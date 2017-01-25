.class Lorg/apache/ignite/marshaller/jdk/JdkMarshallerObjectOutputStream;
.super Ljava/io/ObjectOutputStream;
.source "JdkMarshallerObjectOutputStream.java"


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerObjectOutputStream;->enableReplaceObject(Z)Z

    .line 37
    return-void
.end method


# virtual methods
.method protected replaceObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 41
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/marshaller/MarshallerExclusions;->isExcluded(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerDummySerializable;

    invoke-direct {v0}, Lorg/apache/ignite/marshaller/jdk/JdkMarshallerDummySerializable;-><init>()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Ljava/io/ObjectOutputStream;->replaceObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
