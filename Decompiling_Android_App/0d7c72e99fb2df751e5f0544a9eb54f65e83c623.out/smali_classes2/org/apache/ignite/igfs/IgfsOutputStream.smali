.class public abstract Lorg/apache/ignite/igfs/IgfsOutputStream;
.super Ljava/io/OutputStream;
.source "IgfsOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract transferFrom(Ljava/io/DataInput;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
