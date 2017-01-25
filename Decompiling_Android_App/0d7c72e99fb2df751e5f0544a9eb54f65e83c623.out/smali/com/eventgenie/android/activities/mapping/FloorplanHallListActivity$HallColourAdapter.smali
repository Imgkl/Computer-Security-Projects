.class Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity$HallColourAdapter;
.super Landroid/widget/SimpleAdapter;
.source "FloorplanHallListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/mapping/FloorplanHallListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HallColourAdapter"
.end annotation


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
    .line 205
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 206
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 210
    if-eqz p2, :cond_0

    .line 211
    sget v1, Lcom/eventgenie/android/R$id;->color_indicator:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 212
    .local v0, "c":Landroid/view/View;
    sget v1, Lcom/eventgenie/android/R$color;->schedule_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 214
    .end local v0    # "c":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 215
    return-object p2
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->color_indicator:I

    if-ne v0, v1, :cond_1

    .line 221
    if-eqz p2, :cond_0

    .line 222
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method
