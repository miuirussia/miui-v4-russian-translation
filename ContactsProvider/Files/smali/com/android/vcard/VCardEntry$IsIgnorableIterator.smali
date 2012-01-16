.class Lcom/android/vcard/VCardEntry$IsIgnorableIterator;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElementIterator;


# instance fields
.field private pW:Z


# virtual methods
.method public F()V
    .locals 0

    .prologue
    .line 1631
    return-void
.end method

.method public G()V
    .locals 0

    .prologue
    .line 1635
    return-void
.end method

.method public H()V
    .locals 0

    .prologue
    .line 1643
    return-void
.end method

.method public a(Lcom/android/vcard/VCardEntry$EntryLabel;)V
    .locals 0
    .parameter

    .prologue
    .line 1639
    return-void
.end method

.method public a(Lcom/android/vcard/VCardEntry$EntryElement;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1647
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1648
    iput-boolean v0, p0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->pW:Z

    .line 1652
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
