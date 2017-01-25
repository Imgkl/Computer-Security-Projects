.class Lcom/eventgenie/android/adapters/entity/ExhibitorAdapter;
.super Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;
.source "ExhibitorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "data"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "alphaIndexColumn"    # Ljava/lang/String;
    .param p7, "featureConfig"    # Lcom/genie_connect/android/db/config/features/GmListModifier;
    .param p8, "namespace"    # J

    .prologue
    .line 45
    invoke-direct/range {p0 .. p9}, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/features/GmListModifier;J)V

    .line 46
    return-void
.end method

.method private static toggleDivider(Landroid/view/View;)V
    .locals 4
    .param p0, "convertView"    # Landroid/view/View;

    .prologue
    .line 57
    sget v2, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v0

    .line 58
    .local v0, "a":Z
    sget v2, Lcom/eventgenie/android/R$id;->type:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v1

    .line 60
    .local v1, "b":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 61
    sget v2, Lcom/eventgenie/android/R$id;->divider:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    sget v2, Lcom/eventgenie/android/R$id;->divider:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/eventgenie/android/adapters/entity/EntityImageIndexedCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    invoke-static {p2}, Lcom/eventgenie/android/adapters/entity/ExhibitorAdapter;->toggleDivider(Landroid/view/View;)V

    .line 53
    return-object p2
.end method
