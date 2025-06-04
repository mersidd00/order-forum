FROM n8nio/n8n

# يمكنك إضافة ملفات workflow هنا إذا تريد استيرادها تلقائيًا
# لكن لتبسيط الأمر، سنشغل n8n فقط.
WORKDIR /data
COPY order.json /data/



# فتح المنفذ 5678 (المنفذ الافتراضي لـ n8n)
EXPOSE 5678

CMD ["n8n"]
