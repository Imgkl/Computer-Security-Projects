.class public abstract Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;
.super Lcom/eventgenie/android/activities/base/GenieAbcActivity;
.source "BaseTextOnlyDebugScreen.java"


# static fields
.field private static final NEW_LINE:Ljava/lang/String;

.field private static final SECTION_LINE:Ljava/lang/String; = "------------------------------"


# instance fields
.field private mPadding:I

.field private final mStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->NEW_LINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;-><init>()V

    .line 21
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method private hideOldActionbarIfNeeded()V
    .locals 2

    .prologue
    .line 85
    instance-of v1, p0, Landroid/support/v7/app/ActionBarActivity;

    if-eqz v1, :cond_0

    .line 86
    sget v1, Lcom/eventgenie/android/R$id;->action_bar:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "oldActionbar":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 88
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .end local v0    # "oldActionbar":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method protected append(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 28
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->appendNewLine()V

    .line 29
    return-void
.end method

.method protected append(Ljava/lang/String;F)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 36
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method protected append(Ljava/lang/String;J)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 40
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method protected append(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 45
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    sget-object v1, Lcom/genie_connect/android/utils/string/StringUtils;->BULLET_CHARACTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 46
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    iget v1, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mPadding:I

    invoke-static {p1, v1}, Lcom/genie_connect/android/utils/string/StringUtils;->padRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 47
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    const-string v1, ":\t"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 48
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    if-nez p2, :cond_0

    const-string p2, "null"

    .end local p2    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 49
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->appendNewLine()V

    .line 50
    return-void
.end method

.method protected append(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 32
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method protected appendBold(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 54
    .local v0, "ss":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 60
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 61
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->appendNewLine()V

    .line 62
    return-void
.end method

.method protected appendNewLine()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    sget-object v1, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->NEW_LINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 66
    return-void
.end method

.method protected appendSectionLine()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    const-string v1, "------------------------------"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 70
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->appendNewLine()V

    .line 71
    return-void
.end method

.method protected appendWithValueAsNewLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/genie_connect/android/utils/string/StringUtils;->padRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method protected abstract getMinimumLabelCharCount()I
.end method

.method protected getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    sget v0, Lcom/eventgenie/android/R$layout;->generic_textview:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->setContentView(I)V

    .line 97
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->hideOldActionbarIfNeeded()V

    .line 100
    sget v0, Lcom/eventgenie/android/R$id;->textView1:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mTextView:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 103
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->getMinimumLabelCharCount()I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mPadding:I

    .line 104
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "paramMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method protected writeToTextView()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method
