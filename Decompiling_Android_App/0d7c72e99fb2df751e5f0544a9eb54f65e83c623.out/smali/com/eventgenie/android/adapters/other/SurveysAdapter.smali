.class public Lcom/eventgenie/android/adapters/other/SurveysAdapter;
.super Landroid/widget/SimpleAdapter;
.source "SurveysAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 15
    return-void
.end method
