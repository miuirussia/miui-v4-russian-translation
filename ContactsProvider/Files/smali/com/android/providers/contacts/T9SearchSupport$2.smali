.class Lcom/android/providers/contacts/T9SearchSupport$2;
.super Ljava/lang/Thread;
.source "T9SearchSupport.java"


# instance fields
.field final synthetic gm:Lcom/android/providers/contacts/T9SearchSupport;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/T9SearchSupport;)V
    .locals 0
    .parameter

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$2;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$2;->gm:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->load()V

    .line 1366
    return-void
.end method
