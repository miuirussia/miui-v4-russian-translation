.class Lcom/android/providers/contacts/ContactsProvider2$1;
.super Landroid/os/Handler;
.source "ContactsProvider2.java"


# instance fields
.field final synthetic bt:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->bt:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$1;->bt:Lcom/android/providers/contacts/ContactsProvider2;

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->b(ILjava/lang/Object;)V

    .line 1474
    return-void
.end method
