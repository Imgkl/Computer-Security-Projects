.class public Lorg/apache/ignite/internal/igfs/common/IgfsDataOutputStream;
.super Ljava/io/DataOutputStream;
.source "IgfsDataOutputStream.java"

# interfaces
.implements Ljava/io/ObjectOutput;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 37
    return-void
.end method


# virtual methods
.method public writeObject(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This method must not be invoked on IGFS data output stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
