.class Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
.super Ljava/lang/Object;
.source "GlobalSearchSupport.java"


# instance fields
.field filter:Ljava/lang/String;

.field presence:I

.field vf:J

.field vg:Ljava/lang/String;

.field vh:Ljava/lang/String;

.field vi:Ljava/lang/String;

.field vj:Ljava/lang/String;

.field vk:Ljava/lang/String;

.field vl:Ljava/lang/String;

.field vm:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/GlobalSearchSupport$1;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;-><init>()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 207
    const-string v0, "_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-wide v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vf:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v0, "suggest_text_1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_1
    const-string v0, "suggest_text_2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_2
    const-string v0, "suggest_icon_1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_3
    const-string v0, "suggest_icon_2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_4
    const-string v0, "suggest_intent_data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 218
    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->gg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_5
    const-string v0, "suggest_intent_data_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 220
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_6
    const-string v0, "suggest_shortcut_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_7
    const-string v0, "suggest_intent_extra_data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 224
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->filter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_8
    const-string v0, "suggest_last_access_hint"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 226
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid column name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private gg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vf:J

    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vh:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public k([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vg:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vk:Ljava/lang/String;

    .line 183
    :goto_0
    iget v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 184
    iget v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    invoke-static {v0}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vl:Ljava/lang/String;

    .line 187
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    if-nez p1, :cond_3

    .line 189
    iget-wide v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vf:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vi:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vj:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vk:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->gg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vh:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->filter:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vm:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    return-object v1

    .line 180
    :cond_2
    const v0, 0x10802b6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vk:Ljava/lang/String;

    goto :goto_0

    .line 199
    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 200
    aget-object v2, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
