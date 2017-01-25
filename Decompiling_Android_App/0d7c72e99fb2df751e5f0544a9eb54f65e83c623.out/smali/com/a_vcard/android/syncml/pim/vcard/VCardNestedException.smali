.class public Lcom/a_vcard/android/syncml/pim/vcard/VCardNestedException;
.super Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
.source "VCardNestedException.java"


# static fields
.field private static final serialVersionUID:J = 0x2662b0747689277cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
