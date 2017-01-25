.class Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper$ActivityInfoComparator;
.super Ljava/lang/Object;
.source "ResourceCheckViewHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ActivityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper$1;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper$ActivityInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ActivityInfo;)I
    .locals 2
    .param p1, "first"    # Landroid/content/pm/ActivityInfo;
    .param p2, "second"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 159
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p1, Landroid/content/pm/ActivityInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ActivityInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/fragments/utils/ResourceCheckViewHelper$ActivityInfoComparator;->compare(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v0

    return v0
.end method
