.class public Lcom/eventgenie/android/ui/help/ExhibitorHelper;
.super Ljava/lang/Object;
.source "ExhibitorHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapListTextView(Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 6
    .param p0, "v"    # Landroid/widget/TextView;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const v5, 0x106000d

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 39
    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    move-result v3

    sget v4, Lcom/eventgenie/android/R$id;->location:I

    if-ne v3, v4, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->location_formatter:I

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :goto_0
    return v1

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    move-result v3

    sget v4, Lcom/eventgenie/android/R$id;->color_indicator:I

    if-ne v3, v4, :cond_2

    .line 44
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 46
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 55
    goto :goto_0
.end method
