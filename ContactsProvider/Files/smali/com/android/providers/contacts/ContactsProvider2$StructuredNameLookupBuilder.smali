.class Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;
.super Lcom/android/providers/contacts/NameLookupBuilder;
.source "ContactsProvider2.java"


# instance fields
.field final synthetic bt:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/NameSplitter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7970
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;->bt:Lcom/android/providers/contacts/ContactsProvider2;

    .line 7971
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/NameLookupBuilder;-><init>(Lcom/android/providers/contacts/NameSplitter;)V

    .line 7972
    return-void
.end method


# virtual methods
.method protected a(JJILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7977
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;->bt:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->f(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(JJILjava/lang/String;)V

    .line 7978
    return-void
.end method

.method protected c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 7982
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;->bt:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->g(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/CommonNicknameCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/CommonNicknameCache;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
