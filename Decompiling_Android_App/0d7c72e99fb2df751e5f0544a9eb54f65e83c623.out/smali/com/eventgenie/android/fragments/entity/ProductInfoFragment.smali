.class public Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;
.super Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;
.source "ProductInfoFragment.java"


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;-><init>()V

    return-void
.end method

.method private addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "labelView"    # I
    .param p4, "valueView"    # I
    .param p5, "containerView"    # I

    .prologue
    const/4 v2, 0x0

    .line 114
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    if-gtz p3, :cond_3

    .line 115
    :cond_0
    if-eqz p2, :cond_1

    .line 116
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "maybeImageView":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 122
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "maybeImageView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    invoke-interface {v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->getDetailsTitleColour()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/4 v1, 0x1

    .line 129
    :goto_0
    return v1

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    move v1, v2

    .line 129
    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 65
    .local v7, "mInflater":Landroid/view/LayoutInflater;
    sget v0, Lcom/eventgenie/android/R$layout;->details_product_holo:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->mRootView:Landroid/view/View;

    .line 67
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->getActivityAsDataProvider()Lcom/eventgenie/android/fragments/base/FragmentDataProvider;

    move-result-object v0

    const-class v1, Lcom/genie_connect/common/db/model/Product;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/eventgenie/android/fragments/base/FragmentDataProvider;->getData(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/genie_connect/common/db/model/Product;

    .line 68
    .local v8, "product":Lcom/genie_connect/common/db/model/Product;
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 70
    .local v6, "description":Landroid/widget/TextView;
    iget-object v0, v8, Lcom/genie_connect/common/db/model/Product;->fullDescription:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, v8, Lcom/genie_connect/common/db/model/Product;->fullDescription:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;

    invoke-direct {v2}, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 73
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->description_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->description:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 80
    :goto_0
    const/4 v10, 0x0

    .line 82
    .local v10, "rows":I
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getProducts()Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    move-result-object v9

    .line 84
    .local v9, "productConfig":Lcom/genie_connect/android/db/config/widgets/ProductConfig;
    iget-object v1, v8, Lcom/genie_connect/common/db/model/Product;->customField1:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->getCustomField1()Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;->getName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->customfield1_label:I

    sget v4, Lcom/eventgenie/android/R$id;->customfield1_value:I

    sget v5, Lcom/eventgenie/android/R$id;->customfield1_layout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    add-int/2addr v10, v0

    .line 85
    iget-object v1, v8, Lcom/genie_connect/common/db/model/Product;->customField2:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->getCustomField2()Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;->getName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->customfield2_label:I

    sget v4, Lcom/eventgenie/android/R$id;->customfield2_value:I

    sget v5, Lcom/eventgenie/android/R$id;->customfield2_layout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    add-int/2addr v10, v0

    .line 86
    iget-object v1, v8, Lcom/genie_connect/common/db/model/Product;->customField3:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->getCustomField3()Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;->getName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->customfield3_label:I

    sget v4, Lcom/eventgenie/android/R$id;->customfield3_value:I

    sget v5, Lcom/eventgenie/android/R$id;->customfield3_layout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    add-int/2addr v10, v0

    .line 87
    iget-object v1, v8, Lcom/genie_connect/common/db/model/Product;->customField4:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->getCustomField4()Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;->getName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->customfield4_label:I

    sget v4, Lcom/eventgenie/android/R$id;->customfield4_value:I

    sget v5, Lcom/eventgenie/android/R$id;->customfield4_layout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    add-int/2addr v10, v0

    .line 88
    iget-object v1, v8, Lcom/genie_connect/common/db/model/Product;->customField5:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->getCustomField5()Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;->getName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->customfield5_label:I

    sget v4, Lcom/eventgenie/android/R$id;->customfield5_value:I

    sget v5, Lcom/eventgenie/android/R$id;->customfield5_layout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    add-int/2addr v10, v0

    .line 90
    iget-object v1, v8, Lcom/genie_connect/common/db/model/Product;->contact_telephone:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/eventgenie/android/R$id;->phone:I

    sget v5, Lcom/eventgenie/android/R$id;->phone_layout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    add-int/2addr v10, v0

    .line 91
    iget-object v1, v8, Lcom/genie_connect/common/db/model/Product;->contact_telephone2:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/eventgenie/android/R$id;->phone2:I

    sget v5, Lcom/eventgenie/android/R$id;->phone2_layout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    add-int/2addr v10, v0

    .line 92
    iget-object v1, v8, Lcom/genie_connect/common/db/model/Product;->contact_fax:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/eventgenie/android/R$id;->fax:I

    sget v5, Lcom/eventgenie/android/R$id;->fax_layout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    add-int/2addr v10, v0

    .line 93
    iget-object v1, v8, Lcom/genie_connect/common/db/model/Product;->contact_email:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/eventgenie/android/R$id;->email:I

    sget v5, Lcom/eventgenie/android/R$id;->email_layout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    add-int/2addr v10, v0

    .line 94
    iget-object v1, v8, Lcom/genie_connect/common/db/model/Product;->contact_www:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/eventgenie/android/R$id;->web:I

    sget v5, Lcom/eventgenie/android/R$id;->web_layout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    add-int/2addr v10, v0

    .line 95
    iget-object v1, v8, Lcom/genie_connect/common/db/model/Product;->contact_twitter:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/eventgenie/android/R$id;->twitter:I

    sget v5, Lcom/eventgenie/android/R$id;->twitter_layout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    add-int/2addr v10, v0

    .line 96
    iget-object v1, v8, Lcom/genie_connect/common/db/model/Product;->contact_youtubeUrl:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/eventgenie/android/R$id;->youtube:I

    sget v5, Lcom/eventgenie/android/R$id;->youtube_layout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    add-int/2addr v10, v0

    .line 97
    iget-object v1, v8, Lcom/genie_connect/common/db/model/Product;->contact_facebook:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/eventgenie/android/R$id;->facebook:I

    sget v5, Lcom/eventgenie/android/R$id;->facebook_layout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    add-int/2addr v10, v0

    .line 98
    iget-object v1, v8, Lcom/genie_connect/common/db/model/Product;->contact_blogUrl:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/eventgenie/android/R$id;->blog:I

    sget v5, Lcom/eventgenie/android/R$id;->blog_layout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    add-int/2addr v10, v0

    .line 99
    iget-object v1, v8, Lcom/genie_connect/common/db/model/Product;->contact_linkedIn:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/eventgenie/android/R$id;->linkedin:I

    sget v5, Lcom/eventgenie/android/R$id;->linkedin_layout:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->addInfoRow(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    add-int/2addr v10, v0

    .line 101
    if-nez v10, :cond_1

    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->further_info_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :goto_1
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->mRootView:Landroid/view/View;

    return-object v0

    .line 76
    .end local v9    # "productConfig":Lcom/genie_connect/android/db/config/widgets/ProductConfig;
    .end local v10    # "rows":I
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->description_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->description_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 104
    .restart local v9    # "productConfig":Lcom/genie_connect/android/db/config/widgets/ProductConfig;
    .restart local v10    # "rows":I
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->mRootView:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->further_info_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->further_info:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/ProductInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    goto :goto_1
.end method
