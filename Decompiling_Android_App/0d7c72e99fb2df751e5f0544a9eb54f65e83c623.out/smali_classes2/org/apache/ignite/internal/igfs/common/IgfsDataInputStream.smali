.class public Lorg/apache/ignite/internal/igfs/common/IgfsDataInputStream;
.super Ljava/io/DataInputStream;
.source "IgfsDataInputStream.java"

# interfaces
.implements Ljava/io/ObjectInput;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    return-void
.end method


# virtual methods
.method public readObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This method must not be invoked on IGFS data input stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
