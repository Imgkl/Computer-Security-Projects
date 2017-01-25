.class public Lorg/apache/ignite/configuration/CollectionConfiguration;
.super Ljava/lang/Object;
.source "CollectionConfiguration.java"


# instance fields
.field private cacheName:Ljava/lang/String;

.field private collocated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/configuration/CollectionConfiguration;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public isCollocated()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/CollectionConfiguration;->collocated:Z

    return v0
.end method

.method public setCacheName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/apache/ignite/configuration/CollectionConfiguration;->cacheName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setCollocated(Z)V
    .locals 0
    .param p1, "collocated"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/CollectionConfiguration;->collocated:Z

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lorg/apache/ignite/configuration/CollectionConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
