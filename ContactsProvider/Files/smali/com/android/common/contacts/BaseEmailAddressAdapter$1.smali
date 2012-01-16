.class Lcom/android/common/contacts/BaseEmailAddressAdapter$1;
.super Landroid/os/Handler;
.source "BaseEmailAddressAdapter.java"


# instance fields
.field final synthetic am:Lcom/android/common/contacts/BaseEmailAddressAdapter;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$1;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->ab(I)V

    .line 273
    return-void
.end method
