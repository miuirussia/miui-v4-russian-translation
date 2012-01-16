.class Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;
.super Lcom/android/providers/contacts/NameLookupBuilder;
.source "ContactsDatabaseHelper.java"


# instance fields
.field private final H:Landroid/database/sqlite/SQLiteStatement;

.field private final I:Lcom/android/providers/contacts/CommonNicknameCache;

.field final synthetic J:Lcom/android/providers/contacts/ContactsDatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3092
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;->J:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 3093
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/NameLookupBuilder;-><init>(Lcom/android/providers/contacts/NameSplitter;)V

    .line 3094
    iput-object p3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;->I:Lcom/android/providers/contacts/CommonNicknameCache;

    .line 3095
    iput-object p4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;->H:Landroid/database/sqlite/SQLiteStatement;

    .line 3096
    return-void
.end method


# virtual methods
.method protected a(JJILjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3101
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3102
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;->J:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;->H:Landroid/database/sqlite/SQLiteStatement;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V

    .line 3105
    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3109
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;->I:Lcom/android/providers/contacts/CommonNicknameCache;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/CommonNicknameCache;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
