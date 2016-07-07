package ${packageName};

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.List;

/**
 * Created by disword on 16/7/7.
 */
public class ${adapterName} extends BaseAdapter {
    private Context context;
    private List<${itemName}> list;
    private LayoutInflater mInflater;

    public ${adapterName}(Context context, List<${itemName}> list) {
        this.context = context;
        this.list = list;
        mInflater = LayoutInflater.from(context);
    }

    @Override
    public int getCount() {
        return list.size();
    }

    @Override
    public Object getItem(int position) {
        return list.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        ListViewHolder holder = null;
        if (convertView == null) {
            convertView = mInflater.inflate(R.layout.list_view_item, null);
            holder = new ListViewHolder(convertView);
            convertView.setTag(holder);
        } else {
            holder = (ListViewHolder) convertView.getTag();
        }
        ${itemName} item = list.get(position);
        holder.textView.setText(item.text);
        return convertView;
    }

    static class ListViewHolder {
        TextView textView;
        View itemView;

        public ListViewHolder(View itemView) {
            this.itemView = itemView;
            textView = (TextView) itemView.findViewById(R.id.textView);
        }
    }
}
