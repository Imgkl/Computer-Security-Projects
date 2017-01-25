.class public Lcom/a_vcard/android/syncml/pim/vcard/VCardVersionException;
.super Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
.source "VCardVersionException.java"


# static fields
.field private static final serialVersionUID:J = 0x36c99a04c9ce6813L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
