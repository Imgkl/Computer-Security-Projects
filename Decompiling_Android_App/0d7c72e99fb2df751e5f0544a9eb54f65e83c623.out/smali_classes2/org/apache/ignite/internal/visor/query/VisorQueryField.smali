.class public Lorg/apache/ignite/internal/visor/query/VisorQueryField;
.super Ljava/lang/Object;
.source "VisorQueryField.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final field:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryField;->type:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryField;->field:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public field()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryField;->field:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lorg/apache/ignite/internal/visor/query/VisorQueryField;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryField;->type:Ljava/lang/String;

    return-object v0
.end method
