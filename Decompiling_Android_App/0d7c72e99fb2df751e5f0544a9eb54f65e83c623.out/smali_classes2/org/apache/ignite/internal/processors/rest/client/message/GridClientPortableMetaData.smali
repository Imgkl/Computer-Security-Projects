.class public Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPortableMetaData;
.super Ljava/lang/Object;
.source "GridClientPortableMetaData.java"


# instance fields
.field private affKeyFieldName:Ljava/lang/String;

.field private fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private typeId:I

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public affinityKeyFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPortableMetaData;->affKeyFieldName:Ljava/lang/String;

    return-object v0
.end method

.method public fields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPortableMetaData;->fields:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPortableMetaData;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPortableMetaData;->typeId:I

    return v0
.end method

.method public typeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPortableMetaData;->typeName:Ljava/lang/String;

    return-object v0
.end method
