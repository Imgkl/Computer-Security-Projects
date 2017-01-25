.class public Lcom/a_vcard/android/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a_vcard/android/text/Selection$1;,
        Lcom/a_vcard/android/text/Selection$END;,
        Lcom/a_vcard/android/text/Selection$START;
    }
.end annotation


# static fields
.field public static final SELECTION_END:Ljava/lang/Object;

.field public static final SELECTION_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 427
    new-instance v0, Lcom/a_vcard/android/text/Selection$START;

    invoke-direct {v0, v1}, Lcom/a_vcard/android/text/Selection$START;-><init>(Lcom/a_vcard/android/text/Selection$1;)V

    sput-object v0, Lcom/a_vcard/android/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 428
    new-instance v0, Lcom/a_vcard/android/text/Selection$END;

    invoke-direct {v0, v1}, Lcom/a_vcard/android/text/Selection$END;-><init>(Lcom/a_vcard/android/text/Selection$1;)V

    sput-object v0, Lcom/a_vcard/android/text/Selection;->SELECTION_END:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final extendSelection(Lcom/a_vcard/android/text/Spannable;I)V
    .locals 2
    .param p0, "text"    # Lcom/a_vcard/android/text/Spannable;
    .param p1, "index"    # I

    .prologue
    .line 99
    sget-object v0, Lcom/a_vcard/android/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Lcom/a_vcard/android/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 100
    sget-object v0, Lcom/a_vcard/android/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Lcom/a_vcard/android/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 101
    :cond_0
    return-void
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    instance-of v0, p0, Lcom/a_vcard/android/text/Spanned;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lcom/a_vcard/android/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Lcom/a_vcard/android/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Lcom/a_vcard/android/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 50
    :goto_0
    return v0

    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 36
    instance-of v0, p0, Lcom/a_vcard/android/text/Spanned;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Lcom/a_vcard/android/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    sget-object v0, Lcom/a_vcard/android/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Lcom/a_vcard/android/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 39
    :goto_0
    return v0

    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final removeSelection(Lcom/a_vcard/android/text/Spannable;)V
    .locals 1
    .param p0, "text"    # Lcom/a_vcard/android/text/Spannable;

    .prologue
    .line 107
    sget-object v0, Lcom/a_vcard/android/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Lcom/a_vcard/android/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 108
    sget-object v0, Lcom/a_vcard/android/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Lcom/a_vcard/android/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public static final selectAll(Lcom/a_vcard/android/text/Spannable;)V
    .locals 2
    .param p0, "text"    # Lcom/a_vcard/android/text/Spannable;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/a_vcard/android/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/a_vcard/android/text/Selection;->setSelection(Lcom/a_vcard/android/text/Spannable;II)V

    .line 93
    return-void
.end method

.method public static final setSelection(Lcom/a_vcard/android/text/Spannable;I)V
    .locals 0
    .param p0, "text"    # Lcom/a_vcard/android/text/Spannable;
    .param p1, "index"    # I

    .prologue
    .line 85
    invoke-static {p0, p1, p1}, Lcom/a_vcard/android/text/Selection;->setSelection(Lcom/a_vcard/android/text/Spannable;II)V

    .line 86
    return-void
.end method

.method public static setSelection(Lcom/a_vcard/android/text/Spannable;II)V
    .locals 4
    .param p0, "text"    # Lcom/a_vcard/android/text/Spannable;
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 70
    invoke-static {p0}, Lcom/a_vcard/android/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 71
    .local v1, "ostart":I
    invoke-static {p0}, Lcom/a_vcard/android/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 73
    .local v0, "oend":I
    if-ne v1, p1, :cond_0

    if-eq v0, p2, :cond_1

    .line 74
    :cond_0
    sget-object v2, Lcom/a_vcard/android/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v3, 0x222

    invoke-interface {p0, v2, p1, p1, v3}, Lcom/a_vcard/android/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 76
    sget-object v2, Lcom/a_vcard/android/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v3, 0x22

    invoke-interface {p0, v2, p2, p2, v3}, Lcom/a_vcard/android/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 79
    :cond_1
    return-void
.end method
