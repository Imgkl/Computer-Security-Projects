.class Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect$3;
.super Ljava/lang/Object;
.source "SQLServerDialect.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect;->mergeQuery(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect;


# direct methods
.method constructor <init>(Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect$3;->this$0:Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/store/jdbc/dialect/SQLServerDialect$3;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "col"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
