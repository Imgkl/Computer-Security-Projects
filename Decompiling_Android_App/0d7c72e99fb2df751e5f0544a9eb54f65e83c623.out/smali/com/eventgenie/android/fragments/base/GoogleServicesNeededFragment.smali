.class public Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseFragment;
.source "GoogleServicesNeededFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    sget v2, Lcom/eventgenie/android/R$layout;->page_generic_text_and_button:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, "page":Landroid/view/View;
    sget v2, Lcom/eventgenie/android/R$id;->text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/eventgenie/android/R$string;->google_play_services_missing:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget v2, Lcom/eventgenie/android/R$id;->button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 55
    .local v0, "button":Landroid/widget/Button;
    sget v2, Lcom/eventgenie/android/R$string;->get_google_play_services:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v2, Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment$1;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment$1;-><init>(Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-object v1
.end method
