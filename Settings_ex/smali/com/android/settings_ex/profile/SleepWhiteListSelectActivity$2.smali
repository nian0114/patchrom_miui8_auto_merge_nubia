.class Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$2;
.super Ljava/lang/Object;
.source "SleepWhiteListSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$2;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 110
    .local v4, "isChecked":Z
    iget-object v8, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$2;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mCheckedMap:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->access$100(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 111
    iget-object v8, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$2;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mCheckedMap:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->access$100(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 113
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$2;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mCheckedMap:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->access$100(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    if-nez v4, :cond_1

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v8, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$2;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhitelistAdapter;
    invoke-static {v8}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->access$200(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)Lcom/android/settings_ex/profile/SleepWhitelistAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings_ex/profile/SleepWhitelistAdapter;->notifyDataSetChanged()V

    .line 115
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v8

    move/from16 v0, p3

    invoke-interface {v8, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 116
    .local v2, "cursor":Landroid/database/Cursor;
    const-string v8, "display_name"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "name":Ljava/lang/String;
    const-string v8, "data1"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "number":Ljava/lang/String;
    const-string v8, "_id"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "ids":Ljava/lang/String;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "contact":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 126
    iget-object v8, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$2;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mSelectedContacts:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->access$000(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$2;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mSelectedContacts:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->access$000(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 131
    .local v7, "selectedNumber":I
    if-nez v7, :cond_3

    .line 132
    iget-object v8, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$2;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    const v9, 0x7f0c0ca3

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->setTitle(I)V

    .line 136
    :goto_2
    return-void

    .line 113
    .end local v1    # "contact":Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "ids":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "selectedNumber":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 128
    .restart local v1    # "contact":Ljava/lang/String;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "ids":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "number":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$2;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mSelectedContacts:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->access$000(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    .restart local v7    # "selectedNumber":I
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$2;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    iget-object v9, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$2;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    const v10, 0x7f0c0ca4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
