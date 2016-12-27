.class Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$3;
.super Landroid/content/AsyncQueryHandler;
.source "SleepWhiteListSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->initQueryHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/ContentResolver;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$3;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 151
    move-object v0, p3

    .line 152
    .local v0, "cursor":Landroid/database/Cursor;
    packed-switch p1, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity$3;->this$0:Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;

    # getter for: Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->mListAdapter:Lcom/android/settings_ex/profile/SleepWhitelistAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;->access$200(Lcom/android/settings_ex/profile/SleepWhiteListSelectActivity;)Lcom/android/settings_ex/profile/SleepWhitelistAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/profile/SleepWhitelistAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
